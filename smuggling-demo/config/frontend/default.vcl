# specify the VCL syntax version to use
vcl 4.1;

import dynamic;

backend default none;

sub vcl_init {
	new d = dynamic.director(port = "80", max_connections=2);
}

sub vcl_recv {
	# force the host header to match the backend (not all backends need it,
	# but example.com does)
	#set req.http.host = "example.com";
	# set the backend
	if (req.http.host ~ "secret.foo.local" || req.http.host ~ "secret.corp.local") {
	  return (synth(404));
	}
        set req.http.x-forwarded-for = client.ip;
	set req.backend_hint = d.backend("backend");

}

sub vcl_backend_response {
	if (beresp.status > 200) {
		set beresp.ttl = 0s;
	}
}


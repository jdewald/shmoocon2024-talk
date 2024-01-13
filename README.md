# shmoocon2024-talk
Slides, etc from my 2024 Shmoocon talk on Network Layer Confusion

Slides:

[Google Slides version](https://docs.google.com/presentation/d/e/2PACX-1vRB0tTfIJbZfSe77xMniKhn2cqPwt0rvajW3AV4Pq2oIQufw90RujBEgJl5SLi-NQ/pub?start=false&loop=false&delayms=60000)

These don't have the notes (I tried to make them just enhance what I was saying), but hopefully the diagrams are
helpful. If you want to chat more on these, shoot me an email josh @ 40 two org

Demos:

Apologies that none of these have audio, they had been designed to be used as part
of presentations. If they make no sense whatsoever feel free to contact me and
I'm happy to explain what's going on. josh @ 40 two org


- ["Layer 2 Chat"](https://asciinema.org/a/fy89nxfYOgawz1w2xpdmjLpAW) - Demonstrates independence of Layer 2 via a pure Layer 2 chat application using a custom EtherType and MAC addresses. In a way demonstrates MAC "spoofing" as well.  
- ["Layer 2 Chat - Spoofing"](https://asciinema.org/a/d57da7W2d3o7VgOi1QunxVkNH) - An extension of the L2 chat application, now adding "hijacking" that exploits how MAC learning works in switches to takeover a MAC address
- ["Hiding in Plain Site"](https://asciinema.org/a/I2iqjaq93bWRvf25ggSNWRQHq) - Shows how you can use routes and interface IPs to use "public" IPs between two hosts

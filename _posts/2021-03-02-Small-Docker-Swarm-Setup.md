---
layout: post
title: Small Docker Swarm setup
---

In this post I show you my small cluster setup for private purposes and how this can also scale well once a project should become larger. This serves as a small guide to build a good setup for websites. Thereby I try to go further and further into the cluster.

## Setup

So far the cluster consists of 2 Docker Swarm nodes and a HAProxy as load balancer in front of it.
This gives the cluster the possibility to switch to the other node if one node throws errors. 
The HAProxy also runs a CertBot that provides the certificates for the websites.
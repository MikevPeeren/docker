# Kubernetes

Kubernetes is a popular container orchestrator and it has been released in 2015 by Google. Kubernetes runs on top of Docker (usually) as a set of APIs on containers it then provides API/CLI to manage containers across servers. Many clouds provide kubernetes for you but there are also vendors that make a 'distribution' of it.

# Comparison with Swarm

## Advantages of Swarm

- Comes with Docker,single vendor container platform
- Easiest orchestrator to deploy/manage yourself
- Follows 80/20 rules, 20% of feature for 80% of use cases (seems to be the feel)
- Runs anywhere Docker does:
    - local, cloud, datacenter
    - ARM, Windows, 32-bit
- Secure by default
- Easier to troubleshoot

## Advantanges of Kubernetes

- Clouds will deploy/manager Kubernetes for you
- Infrastructure vendors are making their own distributions
- Widest adoption and community
- Flexible: Covers widest set of use cases
- "Kubernetes first" vendor support
- "No one ever got fired for buying IBM"
    - Picking solutions isn't 100% rational
    - Trendy, will benefit your career
    - CIO/CTO Checkbox
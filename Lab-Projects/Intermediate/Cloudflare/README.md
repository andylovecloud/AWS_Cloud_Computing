# Purpose

Our goal is to practice decentralizing services to several different operators on a practical and theoretical level. The goal is to learn to think critically and comprehensively about the good and bad sides of different cloud models.The chosen platform for this test is Cloudfare

**Materials Materials, links, videos etc.**

- https://www.youtube.com/playlist?list=PLsvo7vv9X-Jhpl7lrhnQWXk1mOP4JNHUK
- https://www.cloudflare.com/learning/
- https://www.cloudflare.com/learning/dns/what-is-dns/
- https://www.cloudflare.com/learning/cdn/what-is-a-cdn/
- https://www.cloudflare.com/learning/ssl/what-is-ssl/
- https://symfony.fi/entry/sample-traffic-reports-from-cloudflare-admin-panel

## Assignment

Assigment will be in two parts: 
- First part is to create a Wordpress site on an EC2 instance and connect it to Cloudfare. You shuld have Wordpress from previous assignment.

1. Get a domain using Github student pack
2. Create a free account on Cloudfare.
3. Add your domain to Cloudfare.
4. Connect your Wordpress (EC2 or Google) to Cloudflare.
5. Add Cache features to your Wordpress (EC2 or Google) using Cloudflare.
6. Add SSL to your Wordpress (EC2 or Google) using Cloudflare. (Yes, the dummy way is fine. No ssl between Cloudflare and EC2)
7. Connect to your Wordpress (EC2 or Google) using Cloudflare proxy with https
8. Make a screenshot of your 1) EC2 panel IP address 2) Cloudfare panel (DNS panel where is the domain name and ip) 3) Wordpress site with https 4) nslookup of your domain.

- Second part is to "write" a calculation of the cost of running the site for a year. You should include the cost of the domain, the cost of the EC2 instance, and the cost of the Cloudflare service. No need for exact numbers, but you should be able to explain how you got the numbers. Some metalogic is required!!!

**Scenario Wordpress:**

- 10 gb of traffic per month.
- 1 year of operation.
- 1 domain name.
- 1 EC2 instance.
- 1 Cloudflare account.
- Site size ~ 100 Mb and normal visit is 33 mb
- Using S3 for media files. Maybe you would want to use Cloudflare for this as well? Maybe?

Physical example: https://raf.mod.uk/news/articles/raf-typhoons-land-and-take-off-from-a-road-for-the-first-time/

## Ansible + Docker + Wordpress code

[Ready made Ansible playbook for generating Wordpress site](../Ansible/Other-files/playbook.yaml)


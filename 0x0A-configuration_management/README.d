# 0x0A. Configuration management

## DevOps
## SysAdmin
## Scripting
## CI/CD

**By:** Sylvain Kalache

**Weight:** 1

**Project will start:** Feb 23, 2024 6:00 AM  
**Project must end by:** Feb 24, 2024 6:00 AM  
**Checker released at:** Feb 23, 2024 12:00 PM  
**An auto review will be launched at the deadline**

## Background Context

When I was working for SlideShare, I worked on an auto-remediation tool called Skynet that monitored, scaled, and fixed Cloud infrastructure. I was using a parallel job-execution system called MCollective that allowed me to execute commands to one or multiple servers at the same time. I could apply an action to a selected set of servers by applying a filter such as the server’s hostname or any other metadata we had (server type, server environment…). At some point, a bug was present in my code that sent nil to the filter method.

There were 2 pieces of bad news:

1. When MCollective receives nil as an argument for its filter method, it takes this to mean ‘all servers’.
2. The action I sent was to terminate the selected servers.

I started the parallel job-execution and after some time, I realized that it was taking longer than expected. Looking at logs I realized that I was shutting down SlideShare’s entire document conversion environment. Actually, 75% of all our conversion infrastructure servers had been shut down, resulting in users not able to convert their PDFs, powerpoints, and videos… Pretty bad!

Thanks to Puppet, we were able to restore our infrastructure to normal operation in under 1H, pretty impressive. Imagine if we had to do everything manually: launching the servers, configuring and linking them, importing application code, starting every process, and obviously, fixing all the bugs (you should know by now that complicated infrastructure always goes sideways)…

Obviously writing Puppet code for your infrastructure requires an investment of time and energy, but in the long term, it is for sure a must-have.

That was me ^_^‘: [Twitter link](https://twitter.com/devopsreact/status/836971570136375296)

## Resources

Read or watch:

- [Intro to Configuration Management](https://www.digitalocean.com/community/tutorials/an-introduction-to-configuration-management)
- [Puppet resource type: file](https://puppet.com/docs/puppet/latest/types/file.html) (check “Resource types” for all manifest types in the left menu)
- [Puppet’s Declarative Language: Modeling Instead of Scripting](https://puppet.com/docs/puppet/latest/lang_intro.html)
- [Puppet lint](https://puppet.com/docs/puppet/latest/style_guide.html)
- [Puppet emacs mode](https://github.com/voxpupuli/puppet-mode)

## Requirements

### General

- All your files will be interpreted on Ubuntu 20.04 LTS
- All your files should end with a new line
- A `README.md` file at the root of the folder of the project is mandatory
- Your Puppet manifests must pass puppet-lint version 2.1.1 without any errors
- Your Puppet manifests must run without error
- Your Puppet manifests first line must be a comment explaining what the Puppet manifest is about
- Your Puppet manifests files must end with the extension `.pp`


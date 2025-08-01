# Automated Infrastructure Configuration with Puppet for MySQL High Availability

## Project Overview

This project leverages Puppet to automate infrastructure configuration, with a primary focus on deploying a MySQL High Availability (HA) setup. It streamlines the management of infrastructure components across multiple servers, ensuring consistency, scalability, and reduced manual intervention. Using Puppet's declarative language and modular design, the solution automates the deployment of MySQL HA, alongside services like Nginx, to deliver a robust and resilient infrastructure.

Key components include:

- **Puppet Master**: Centralized server for managing and distributing configuration manifests to nodes.
- **Puppet Agent**: Client-side component that applies configurations on managed nodes.
- **Hiera**: Hierarchical data store for managing environment-specific configuration settings.
- **Puppet Modules**: Reusable scripts for configuring services, applications, and system resources.
- **Puppet Bolt**: Task automation tool for executing ad-hoc tasks and orchestrating workflows.

---

## Architecture

The following diagram illustrates the infrastructure and data flow of the Puppet-based configuration management system:

![Infrastructure Architecture](https://github.com/taihieunguyen/Automated-Infrastructure-Configuration-Using-Puppet/blob/main/Architecture.png?raw=true)

---

## Key Features

- **Automated Configuration Management**: Enforces consistent system states across nodes using Puppet manifests.
- **Scalable Deployment**: Supports large-scale environments with centralized control via the Puppet Master.
- **Modular Design**: Provides reusable Puppet modules for common services like web servers, databases, and monitoring tools.
- **Hiera Integration**: Enables flexible, environment-specific configurations through hierarchical data management.
- **Task Automation**: Leverages Puppet Bolt for ad-hoc task execution and orchestration.
- **Infrastructure as Code**: Maintains configurations in version-controlled manifests for traceability and rollback.

---


## Prerequisites

To deploy this Puppet-based solution, ensure the following are installed:

- Puppet Master
- Puppet Agent
- Ruby (required for Puppet)
- Git (for version control of manifests and modules)

---

## Usage

- **Configuration Management**: Use Puppet manifests to define and apply configurations across nodes.
- **Task Automation**: Execute ad-hoc tasks using Puppet Bolt for rapid infrastructure updates.
- **Environment Customization**: Modify Hiera data files to tailor configurations for specific environments.
- **Monitoring**: Track configuration changes and ensure compliance using Puppet reports.

---

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit (`git commit -m "Add feature"`).
4. Push to the branch (`git push origin feature-branch`).
5. Open a Pull Request.

---

## Contact

For questions or support, please open an issue on the GitHub repository or contact the maintainer at [taihieunguyen004@gmail.com].

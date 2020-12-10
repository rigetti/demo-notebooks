&copy; Copyright 2020 Rigetti & Co, Inc.

Repository of demonstration notebooks
=====================================

This is the central repository for all Python notebooks demonstrating capabilities of Rigetti's Quantum
Processing Units (QPUs) and Quantum Cloud Services (QCS). All notebooks may be executed within the hosted
JupyterLab environment provided as part of the Quantum Cloud Services.

## Getting started

The Python notebooks will be pre-deployed within your JupyterLab environment for easy access. If this is
not yet the case, such as for newly released notebooks, you can upload and run individual notebooks and
their data in your JupyterLab environment. Refer to the Quantum Cloud Services documentation for more
information.

In most cases it is also possible to download or checkout notebooks and their associated data locally, and
run them within a local Jupyter notebook instance. The remainder of this section describes that process.

### System and Python prerequisites

It is assumed you have `docker` installed. It is also recommended to use a Python virtual environment to
isolate the Python dependencies needed for running these demonstration notebooks from other packages you
might have installed on your system.

The necessary Python dependencies can be installed using the command:

```
pip install -r requirements.txt
```

### Run the latest versions of the compiler and quantum virtual machine

In a local environment, the notebooks will only be able to run against the Quantum Virtual Machine (QVM),
and not a real QPU. You must have a local instance of the Rigetti compiler and QVM running as servers. The
docker images for these are the most convenient way, and can be accessed by running the following scripts.

Run the following script in a new terminal to act as the compiler (`rigetti/quilc`) server:

```
./scripts/docker_run_quilc_server.sh
```

Run the following script in a new terminal to act as the QVM (`rigetti/qvm`) server:

```
./scripts/docker_run_qvm_server.sh
```

### Launch the Jupyter notebook server and run demonstration notebooks

You can now launch the Jupyter notebook server using the following command:

```
jupyter notebook
```

In the browser window that opens to the Jupyter front end, navigate to the "notebooks" directory and open
and run any demonstration notebook you choose, as you would in the Quantum Cloud Services environment. All
notebooks are configured to run out-of-the-box on a QVM, so they should all execute within your local
environment.

**Note**: While all notebooks run on a QVM, the effect that is being demonstrated may only be observable on
a Rigetti QPU. Requirements such as these will be described within each notebook.

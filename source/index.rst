
.. contents:: 
   :depth: 2

###################################
 Python Sphinx Project Template
###################################

******************
Welcome !!!
******************

This is a sample of how to start and organize a python Sphinx based documentation
project. This document made use of the 
`Cloud sphinx theme (cloud_sptheme) <https://cloud-sptheme.readthedocs.io/en/latest/index.html>`_

You can change the theme with one of your choice.

****************
Dependencies
****************

**Sphinx project dependencies**

This template require a few dependencies.

Although some dependencies are being kept tracked of via Pipefiles and can be 
automatically installed, others require some executable to be on the user's build
machine.

* The **drawio extension** depends on

    1. `diagrams.net <https://www.diagrams.net/>`_ executable to be on user's machine.
        

* The **plantuml sphinx extension** depends on a
    
    *  `plantuml.jar` that requires `java -jar` command so you'll need the java
       `jre <https://www.java.com/en/download/>`_ on your system

        *  The sphinx-needs has some instruction on how to install get plantuml to work with sphinx
           `plantuml <https://sphinx-needs.readthedocs.io/en/latest/installation.html>`_
         
        * This is already taken care by the build system.

  
*****************
Getting Started
*****************

To get started, do the following:

1. Install the latest python3 on your machine
#. Use ``pip`` to install the ``pipenv`` python package.
    
    .. code-block:: console
       
       pip3 install --user pipenv 

2. Download the project dependencies by running the ``pipenv install`` command without argument from the top
   directory. This command will create a virtual environment if one does not exist already
   and see there is a ``Pipefile.lock`` and install the required packages and their dependencies.

You can start the virtual environment by running ``pipenv shell`` to spawn
your current shell. Or you can run specific command using ``pipenv run <command-you-want>``
Example, ``pipenv run make livehtml`` will start building the python sphinx
documentation project and start a local web server and will watch for changes
as you edit your document source.

3. Start the project by running ``make html`` and navigate to the path build/html/index.html


**********
Documents
**********

.. toctree::
   :caption: Sphinx Cheatsheets
   :glob:
   :maxdepth: 1

   KnowledgeSharing/TechnicalDocumentation/Sphinx/SPNX-*

.. toctree::
   :caption: Git
   :glob:
   :maxdepth: 1

   KnowledgeSharing/Git/HowTo/HowTo-*
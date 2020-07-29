Graylog over Kubernetes
=======================

This template has already been configured to work with the URL it-graylog.ls.lsst.org.
If you require a clean install/template, I recommend grab the template from helm:

.. code-block:: bash

    helm template graylog -n graylog stable/graylog -f values

For further instructions or references, check https://ittn-012.lsst.io


Deployment
----------

First create the namespace 'graylog', and then run deploy.sh

.. code-clock:: bash

   ./deploy.sh

Uninstall
---------

.. code-clock:: bash
   ./deploy.sh

To delete everything, run the undeploy.sh script
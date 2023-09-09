.. _DigrammingWithSphinx:

Diagramming with Sphinx
##########################



Objectives
**************

1. Learn about the sphinx extensions that can be used for diagramming.


Drawio
*********

.. grid:: 2
   
   .. grid-item:: CAN Node 
      
      .. code-block:: text

         .. drawio-image:: ../../../_images/src/CAN.drawio
            :align: right 

   .. grid-item:: **Rendered as**
      
      .. drawio-image:: ../../../_images/src/CAN.drawio
         :align: right 

   

PlantUML
**********

Example 1
==========

.. tab-set::
   
   .. tab-item:: RST 
      
      .. code-block:: text
      
         .. uml:: ../../../_images/src/BSPMindmap.puml
        
      * Content of ``BSPMindmap.puml``
        
        .. literalinclude:: ../../../_images/src/BSPMindmap.puml
   
   .. tab-item:: Rendered As
      
      .. uml:: ../../../_images/src/BSPMindmap.puml


Example 2
==========

.. list-table:: 
   
   * - Markup (RST)
     - Result

   * - A sequence diagram can be created using plantuml 
       
       .. code-block:: text
          
          .. uml::
           
             @startuml
             autonumber 1.1.1
             Alice -> Bob: Authentication request
             Bob --> Alice: Response
             
             autonumber inc A
             'Now we have 2.1.1
             Alice -> Bob: Another authentication request
             Bob --> Alice: Response
             
             autonumber inc B
             'Now we have 2.2.1
             Alice -> Bob: Another authentication request
             Bob --> Alice: Response
             
             autonumber inc A
             'Now we have 3.1.1
             Alice -> Bob: Another authentication request
             autonumber inc B
             'Now we have 3.2.1
             Bob --> Alice: Response
             @enduml

     - This rendered as followed after parsing:
       
        .. uml::

           @startuml
           autonumber 1.1.1
           Alice -> Bob: Authentication request
           Bob --> Alice: Response

           autonumber inc A
           'Now we have 2.1.1
           Alice -> Bob: Another authentication request
           Bob --> Alice: Response

           autonumber inc B
           'Now we have 2.2.1
           Alice -> Bob: Another authentication request
           Bob --> Alice: Response

           autonumber inc A
           'Now we have 3.1.1
           Alice -> Bob: Another authentication request
           autonumber inc B
           'Now we have 3.2.1
           Bob --> Alice: Response
           @enduml
          

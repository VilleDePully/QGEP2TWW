# QGEP2TWW
Migration Scripts From QGEP to TEKSI Wastewater

These scripts aims to help to get practical into the migration from QGEP to TEKSI Wastewater.

## Migration path

> [!NOTE]  
> As QGEP uses pum <= 0.1.10, pirogue 1.4.1 and psycopg2 and 
> TWW uses pum >= 1.1.14, pirogue 3.0.0, psycopg (3.x)
> It can be smart to concentrate the efforts on upgrading all QGEP databases
> before trying to migrate and install TWW

The migration approach is as following :

 * Create a copy of your production database
 * Drop all views and custom extensions locking primary tables (qgep_od)
 * Upgrade QGEP to latest available version for datamodel and plugin

 * Make QGEP Conform VSA 2015 and export ready
 * If necessary, drop symbology triggers to avoid high computation time when dealing with mass edits
 * Create QGEP VSA DSS 2015 Export

 Conversion of the dataset from 2015->2020.1

 * Using the VSA converter tool

 Starting with TWW

 * Initialize TWW into latest available version
 * Import organisation data into TWW
 * Import network data into TWW

 Migrate Adaptations / additional data

 * Upgrade 3D geometries
 * Add additional custom fields and migrate these
 * Create custom export views and schemas


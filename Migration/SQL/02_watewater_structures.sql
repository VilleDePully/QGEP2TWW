-- Delete existing records to avoid duplicates
-- DELETE FROM tww_od.wastewater_structure;

-- Add QGEP wastewater structures to TWW if they do not already exist
INSERT INTO tww_od.wastewater_structure (obj_id, identifier, detail_geometry_geometry )
SELECT obj_id, identifier, detail_geometry3d_geometry
FROM qgep_od.wastewater_structure
WHERE obj_id NOT IN (SELECT obj_id FROM tww_od.wastewater_structure) ;
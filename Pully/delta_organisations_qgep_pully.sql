-- Insert Municipalities
INSERT INTO qgep_od.municipality (obj_id)
VALUES 
( '1' ),
( '5' ),
( '6' ),
( '7' );

-- Insert Private / unknown
INSERT INTO qgep_od.private (obj_id)
VALUES
( '2' ),
( '3' ),
( '4' );

-- Insert wastewater associations
/*INSERT INTO qgep_od.waste_water_association (obj_id)
VALUES
( 'ch13p7mzOG000015' );*/



/* TO AVOID 
ERROR: number of subclass elements of wastewater_structure NOT CORRECT in schema qgep_od: 
Add missing obj_id in wastewater_structure subclasses so that number of subclass elements match wastewater_structure elements. 
See qgep logs tab for details.
*/

/*
Sucess: OK: Integrity checks organisation
*/

SELECT ws.obj_id

   FROM qgep_od.wastewater_structure ws
     LEFT JOIN qgep_od.cover main_co ON main_co.obj_id::text = ws.fk_main_cover::text
     LEFT JOIN qgep_od.structure_part main_co_sp ON main_co_sp.obj_id::text = ws.fk_main_cover::text
     LEFT JOIN qgep_od.manhole ma ON ma.obj_id::text = ws.obj_id::text
     LEFT JOIN qgep_od.special_structure ss ON ss.obj_id::text = ws.obj_id::text
     LEFT JOIN qgep_od.discharge_point dp ON dp.obj_id::text = ws.obj_id::text
     LEFT JOIN qgep_od.infiltration_installation ii ON ii.obj_id::text = ws.obj_id::text
     LEFT JOIN qgep_od.wwtp_structure wt ON wt.obj_id::text = ws.obj_id::text
     LEFT JOIN qgep_od.wastewater_networkelement ne ON ne.obj_id::text = ws.fk_main_wastewater_node::text
     LEFT JOIN qgep_od.wastewater_node wn ON wn.obj_id::text = ws.fk_main_wastewater_node::text
     LEFT JOIN qgep_od.channel ch ON ch.obj_id::text = ws.obj_id::text
            WHERE ma.obj_id IS NULL
            AND ss.obj_id IS NULL 
            AND dp.obj_id IS NULL 
            AND ii.obj_id IS NULL 
            AND wt.obj_id IS NULL 
            AND ch.obj_id IS NULL ;



SELECT ws.obj_id

   FROM qgep_od.wastewater_structure ws
     LEFT JOIN qgep_od.cover main_co ON main_co.obj_id::text = ws.fk_main_cover::text
     LEFT JOIN qgep_od.structure_part main_co_sp ON main_co_sp.obj_id::text = ws.fk_main_cover::text
     LEFT JOIN qgep_od.manhole ma ON ma.obj_id::text = ws.obj_id::text
     LEFT JOIN qgep_od.special_structure ss ON ss.obj_id::text = ws.obj_id::text
     LEFT JOIN qgep_od.discharge_point dp ON dp.obj_id::text = ws.obj_id::text
     LEFT JOIN qgep_od.infiltration_installation ii ON ii.obj_id::text = ws.obj_id::text
     LEFT JOIN qgep_od.wwtp_structure wt ON wt.obj_id::text = ws.obj_id::text
     LEFT JOIN qgep_od.wastewater_networkelement ne ON ne.obj_id::text = ws.fk_main_wastewater_node::text
     LEFT JOIN qgep_od.wastewater_node wn ON wn.obj_id::text = ws.fk_main_wastewater_node::text
     LEFT JOIN qgep_od.channel ch ON ch.obj_id::text = ws.obj_id::text
            WHERE ma.obj_id IS NULL
            AND ss.obj_id IS NULL 
            AND dp.obj_id IS NULL 
            AND ii.obj_id IS NULL 
            AND wt.obj_id IS NULL 
            AND ch.obj_id IS NULL ;


-- Remove unrelated wastewater strucures
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018283';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018681';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018682';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018742';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018765';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018920';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS019311';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS021921';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018834';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018008';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018010';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018011';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018012';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018015';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018073';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018172';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018067';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018139';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018141';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018157';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018158';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018160';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018174';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018175';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018176';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018180';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018419';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018447';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018653';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018655';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018683';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018684';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018685';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018686';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018688';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018706';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018824';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS017898';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018840';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS017910';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018006';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018007';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018035';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018919';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018921';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018922';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018924';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018953';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018954';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS017681';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018955';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS019008';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS019009';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS017856';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS017878';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS019053';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS019054';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018298';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018368';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018402';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018403';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018148';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018188';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018191';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018195';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018434';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018435';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018449';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018452';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018273';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018275';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018277';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018279';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018280';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018581';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018334';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018335';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018336';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018339';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018340';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018341';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018342';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018357';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018358';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018679';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018680';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018404';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018689';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018695';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018696';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018534';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018535';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018551';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018555';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018565';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018586';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018598';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018600';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018635';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018636';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018637';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018638';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018782';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018678';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018796';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018797';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018727';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018820';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018757';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018865';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018925';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018948';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018952';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018956';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018957';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018958';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS018961';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS019045';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS019048';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS019309';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS019314';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS019202';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS019305';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS019307';
DELETE FROM qgep_od.vw_qgep_wastewater_structure ws WHERE ws.obj_id = 'ch176dc9WS020646';

SELECT qgep_sys.drop_symbology_triggers() ;

UPDATE qgep_od.file
SET identifier = obj_id
where identifier IS NULL OR identifier = '';

UPDATE qgep_od.maintenance_event
SET identifier = obj_id
where identifier IS NULL OR identifier = '';

UPDATE qgep_od.wastewater_structure
SET identifier = obj_id
where identifier IS NULL OR identifier = '';

UPDATE qgep_od.wastewater_networkelement
SET identifier = obj_id
where identifier IS NULL OR identifier = '';

UPDATE qgep_od.structure_part
SET identifier = obj_id
where identifier IS NULL OR identifier = '';

UPDATE qgep_od.reach_point
SET identifier = fk_wastewater_networkelement
where identifier IS NULL OR identifier = '';

UPDATE qgep_od.reach_point
SET identifier = obj_id
where identifier IS NULL OR identifier = '';

UPDATE qgep_od.vw_qgep_wastewater_structure
SET fk_owner = '3'
where identifier IS NULL OR identifier = '';

-- Detection des doublons

SELECT obj_id, identifier
FROM qgep_od.wastewater_structure
WHERE identifier IN (
  SELECT identifier
  FROM qgep_od.wastewater_structure
  GROUP BY identifier
  HAVING COUNT(*) > 1
)
ORDER BY identifier;

-- Renommage des doublons

WITH doublons AS (
  SELECT
    identifier,
    obj_id,
    ROW_NUMBER() OVER (PARTITION BY identifier ORDER BY obj_id) AS rn
  FROM qgep_od.wastewater_structure
),
a_renommer AS (
  SELECT
    obj_id,
    identifier || '_' || (rn - 1) AS new_identifier
  FROM doublons
  WHERE rn > 1 -- enlever cette ligne pour postfixer tous les identifiants
)
UPDATE qgep_od.wastewater_structure AS ws
SET identifier = a.new_identifier
FROM a_renommer AS a
WHERE ws.obj_id = a.obj_id;


-- dataowner Has to be fixed or identifier should not be equal
UPDATE qgep_od.wastewater_structure
SET fk_dataowner = '3'
where fk_dataowner IS NULL;

UPDATE qgep_od.wastewater_structure
SET fk_provider = '3'
where fk_provider IS NULL;

-- Update wastewater_structure identifier if too long
UPDATE qgep_od.wastewater_structure
SET identifier = obj_id
WHERE identifier IS NOT NULL AND LENGTH(identifier) > 20;

-- Update wastewater_networkelement identifier if too long (Pipes, network nodes, ...)
UPDATE qgep_od.wastewater_networkelement
SET identifier = fk_wastewater_structure
WHERE identifier IS NOT NULL AND LENGTH(identifier) > 20 AND fk_wastewater_structure IS NOT NULL;

-- Update structure_part identifier if too long (Covers, ...)
UPDATE qgep_od.structure_part
SET identifier = fk_wastewater_structure
WHERE identifier IS NOT NULL AND LENGTH(identifier) > 20 AND fk_wastewater_structure IS NOT NULL;

-- Update reach_point identifier if too long (Inlets, Outlets, ...)
UPDATE qgep_od.reach_point
SET identifier = fk_wastewater_networkelement
WHERE identifier IS NOT NULL AND LENGTH(identifier) > 20 AND fk_wastewater_networkelement IS NOT NULL;

-- Update wastewater_structure location_name if too long
UPDATE qgep_od.wastewater_structure
SET location_name = LEFT(location_name, 20)
WHERE location_name IS NOT NULL AND LENGTH(location_name) > 20;


-- Create new organisations from VSA (if you want to match it before migration)
INSERT INTO qgep_od.organisation (obj_id, identifier)
VALUES 
	('ch20p3q400002060','Pully'),
	('ch20p3q400002061','Belmont-sur-Lausanne'),
	('ch20p3q400002063','Lausanne'),
	('ch20p3q400002062','Canton de Vaud'),
	('ch20p3q400000107','inconnu'),
	('ch20p3q400000094','Privé VSA'),
	('ch20p3q400000101','CFF / SBB'),
	('ch20p3q400000108','OFROU / ASTRA');

-- Match to subclass Municipality
INSERT INTO qgep_od.municipality (obj_id)
VALUES
	('ch20p3q400002060'),
	('ch20p3q400002061'),
	('ch20p3q400002063');

-- Match to subclass Private
INSERT INTO qgep_od.private (obj_id)
VALUES
	('ch20p3q400000094'),
	('ch20p3q400000107'),
	('ch20p3q400000101');

-- Match to subclass waste_water_association
INSERT INTO qgep_od.waste_water_association (obj_id)
VALUES
('ch20p3q400000108');

-- Match to subclass cantons
INSERT INTO qgep_od.canton (obj_id)
VALUES
('ch20p3q400002062');

-- ch13p7mzOG000007 / Arbon
-- ch13p7mzOG000016 / Unbekannt

--SET fk_owner unknow where it is NULL
UPDATE qgep_od.wastewater_structure
SET fk_owner = 'ch20p3q400000107'
WHERE fk_owner IS NULL;

--SET fk_provider unknow where it is NULL
UPDATE qgep_od.wastewater_structure
SET fk_provider = 'ch20p3q400000107'
WHERE fk_provider IS NULL;

--SET fk_provider unknow where it is NULL
UPDATE qgep_od.wastewater_structure
SET fk_operator = 'ch20p3q400000107'
WHERE fk_operator IS NULL;

--SET fk_dataowner unknow where it is NULL
UPDATE qgep_od.wastewater_structure
SET fk_dataowner = 'ch20p3q400000107'
WHERE fk_dataowner IS NULL;

/*
UPDATE qgep_od.wastewater_structure 
SET fk_dataowner = 'ch20p3q400002060', --Pully
fk_provider = 'ch20p3q400002060', --Pully
fk_owner = 'ch20p3q400002060', --Pully
fk_operator = 'ch20p3q400002060'  --Pully
*/

-- WS to drop
ch176dc9WS014571
ch176dc9WS014237
ch176dc9WS004994
ch176dc9WS004987
ch176dc9WS012986
ch176dc9WS014500
ch176dc9WS003364
ch176dc9WS010266
ch176dc9WS010267
ch176dc9WS010268
ch176dc9WS002097
ch176dc9WS008314
ch176dc9WS008473
ch176dc9WS013718
ch176dc9WS006268
ch176dc9WS006903
ch176dc9WS013001
ch176dc9WS005207
ch176dc9WS005206
ch176dc9WS010096
ch176dc9WS010412
ch176dc9WS010809
ch176dc9WS010810
ch176dc9WS010811
ch176dc9WS011383
ch176dc9WS007085

-- Handle Mutliple geometries

-- 0. Drop views
-- To enable type change of geometry columns, views depending on these tables must be dropped
-- You can use the script drop_view.sql in QGEP/datamodel/views folder to drop all views in the correct order

-- Execute drop_view.sql (with PGADMIN or PSQL)

-- 1. Find all real multiple geometries

SELECT 
  obj_id,
  dump.path AS index_geom,
  ST_FORCECURVE(dump.geom)::geometry(CURVEPOLYGONZ, 2056) AS simple_geom
FROM 
  qgep_od.wastewater_structure ws,
  LATERAL ST_Dump(ws.detail_geometry_geometry) AS dump
WHERE
  dump.geom IS NOT NULL
  AND dump.path[1] > 1
;


-- List of obj_id with multiple geometries
('ch176dc9WN022275',
'ch176dc9WN022275',
'ch176dc9WN021365',
'ch176dc9WN021365',
'ch176dc9WN022256',
'ch176dc9WS012473',
'ch176dc9WS023498',
'ch176dc9WS023406',
'ch176dc9WS023735',
'ch176dc9WS024877',
'ch176dc9WS024878')

-- Add new column to store original geometries
ALTER TABLE qgep_od.wastewater_structure 
ADD COLUMN detail_geometry_geometry_2 geometry(MULTIPOLYGONZ, 2056);

-- Copy old geometries to new column
UPDATE qgep_od.wastewater_structure 
SET detail_geometry_geometry_2 = detail_geometry_geometry
WHERE detail_geometry_geometry IS NOT NULL;

-- Set to NULL geometries to avoid issues during type change
UPDATE qgep_od.wastewater_structure 
SET detail_geometry_geometry = NULL
WHERE detail_geometry_geometry IS NOT NULL;



-- Set new geometry type
ALTER TABLE qgep_od.wastewater_structure
ALTER COLUMN detail_geometry_geometry 
SET DATA TYPE geometry(CURVEPOLYGONZ, 2056);

/* -- SELECTION
SELECT obj_id,ST_ASTEXT(ST_FORCECURVE(dump.geom)::geometry(CURVEPOLYGONZ, 2056))
FROM qgep_od.wastewater_structure ws,
LATERAL ST_Dump(ws.detail_geometry_geometry_2) AS dump
WHERE dump.geom IS NOT NULL
AND dump.path[1] = 1;
*/

UPDATE qgep_od.wastewater_structure ws
SET detail_geometry_geometry = ST_FORCECURVE(d.geom)::Geometry(CurvePolygonZ,2056)
FROM (
	SELECT obj_id, (ST_Dump(ST_CollectionExtract(detail_geometry_geometry_2, 3))).geom
	FROM qgep_od.wastewater_structure
	WHERE detail_geometry_geometry_2 IS NOT NULL
) selection
WHERE ws.obj_id = selection.obj_id;

/* Same treatment for reaches but with a conversion to curved geometries */

-- Add new column to store original geometries
ALTER TABLE qgep_od.reach 
ADD COLUMN progression_geometry_2 geometry(LINESTRINGZ, 2056);

-- Copy old geometries to new column
UPDATE qgep_od.reach 
SET progression_geometry_2 = progression_geometry
WHERE progression_geometry IS NOT NULL;

-- Remove NOT NULL constraint if exists
ALTER TABLE qgep_od.reach
ALTER COLUMN progression_geometry DROP NOT NULL;

-- Set to NULL geometriesto avoid issues during type change
UPDATE qgep_od.reach 
SET progression_geometry = NULL
WHERE progression_geometry IS NOT NULL;

-- Execute drop_view.sql

-- Set new geometry type
ALTER TABLE qgep_od.reach
ALTER COLUMN progression_geometry 
SET DATA TYPE geometry(COMPOUNDCURVEZ, 2056);

-- Fill with curved geometries
UPDATE qgep_od.reach r
SET progression_geometry = ST_FORCECURVE(r.progression_geometry_2)::geometry(COMPOUNDCURVEZ, 2056)
WHERE r.progression_geometry_2 IS NOT NULL;

-- Regen views (PYTHON CODE TO RUN FROM THE OSGEO4W SHELL)
-- Check pirogue version 
pip show pirogue

-- In QGEP/datamodel run
pip install -r requirements.txt

-- In QGEP/datamodel run / adapt pg_service according to your connection
python view/create_views.py -p pg_qgep_migration -s 2056
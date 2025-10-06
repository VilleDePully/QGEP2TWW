-- Ajout des organisations de QGEP dans TWW
-- On ajoute les organisations de QGEP dans TWW si elles n'existent pas déjà

INSERT INTO tww_od.organisation (obj_id, identifier)
SELECT obj_id, identifier
FROM qgep_od.organisation
WHERE obj_id NOT IN (SELECT obj_id FROM tww_od.organisation);
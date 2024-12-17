BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ParentID,
	't'::BOOLEAN::BOOLEAN
FROM
	Parent p
UNION
SELECT
	ch.ParentID,
	'f'::BOOLEAN::BOOLEAN
FROM
	Child ch


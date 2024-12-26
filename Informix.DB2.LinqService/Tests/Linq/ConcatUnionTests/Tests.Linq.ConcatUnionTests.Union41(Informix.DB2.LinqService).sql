BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ParentID,
	't'::BOOLEAN
FROM
	Parent p
UNION
SELECT
	ch.ParentID,
	'f'::BOOLEAN
FROM
	Child ch


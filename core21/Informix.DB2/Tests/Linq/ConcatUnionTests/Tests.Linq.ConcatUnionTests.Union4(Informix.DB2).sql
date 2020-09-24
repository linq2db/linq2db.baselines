BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.ParentID,
	't'
FROM
	Parent p
UNION
SELECT
	ch.ParentID,
	'f'
FROM
	Child ch


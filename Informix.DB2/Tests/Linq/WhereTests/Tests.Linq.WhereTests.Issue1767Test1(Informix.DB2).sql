-- Informix.DB2 Informix

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.Value1 IS NOT NULL AND p.Value1 <> 1

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1


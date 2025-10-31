-- Informix.DB2 Informix

SELECT
	x.Value1,
	NVL(x.ParentID, NULL)
FROM
	Parent x
WHERE
	x.ParentID > 3
UNION ALL
SELECT
	NULL::Int,
	NULL::Int
FROM
	Parent p2
WHERE
	p2.ParentID <= 3

-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1


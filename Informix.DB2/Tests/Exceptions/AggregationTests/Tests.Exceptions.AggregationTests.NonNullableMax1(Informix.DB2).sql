-- Informix.DB2 Informix

SELECT
	MAX(t1.ParentID)
FROM
	Parent t1
WHERE
	t1.ParentID < 0


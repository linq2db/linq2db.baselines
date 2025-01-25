BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 1 FIRST 1
	t2.ParentID,
	t2.Value1
FROM
	(
		SELECT DISTINCT
			t1.ParentID,
			t1.Value1
		FROM
			Parent t1
	) t2
ORDER BY
	t2.ParentID DESC

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1


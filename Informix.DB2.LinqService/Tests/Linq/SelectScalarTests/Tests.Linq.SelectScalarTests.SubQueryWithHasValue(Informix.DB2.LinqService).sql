BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1,
	(
		SELECT FIRST 1
			r.Value1 as cond
		FROM
			Parent r
	) t2
WHERE
	t2.cond IS NOT NULL


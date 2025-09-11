BeforeExecute
-- Informix.DB2 Informix

SELECT
	t2.ParentID,
	t2.Value1
FROM
	Parent t2
		CROSS JOIN (
			SELECT FIRST 1
				r.GuidValue as cond
			FROM
				LinqDataTypes r
		) t1
WHERE
	t1.cond IS NOT NULL


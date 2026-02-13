-- Informix.DB2 Informix

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1,
	(
		SELECT FIRST 1
			r.GuidValue
		FROM
			LinqDataTypes r
	) t2
WHERE
	t2.GuidValue IS NOT NULL


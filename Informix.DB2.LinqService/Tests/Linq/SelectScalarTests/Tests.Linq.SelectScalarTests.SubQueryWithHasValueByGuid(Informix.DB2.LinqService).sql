BeforeExecute
-- Informix.DB2 Informix

SELECT
	t2.ParentID,
	t2.Value1
FROM
	Parent t2
		LEFT JOIN (
			SELECT FIRST 1
				CASE
					WHEN r.GuidValue IS NOT NULL THEN 't'
					ELSE 'f'
				END as HasValue
			FROM
				LinqDataTypes r
		) t1 ON 1=1
WHERE
	t1.HasValue = 't'


BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.IsActive,
	t1.Other
FROM
	(
		SELECT
			't' as IsActive,
			Cast(CASE
				WHEN it.SmallIntValue <> 0
					THEN 't'
				ELSE 'f'
			END as BOOLEAN) as Other
		FROM
			LinqDataTypes it
	) t1
GROUP BY
	t1.IsActive,
	t1.Other


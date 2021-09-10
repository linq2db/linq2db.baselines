BeforeExecute
-- Informix.DB2 Informix

SELECT
	t2.a,
	t2.b
FROM
	(
		SELECT
			Cast(CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						Child t1
				)
					THEN 't'
				ELSE 'f'
			END as BOOLEAN) as a,
			Cast(CASE
				WHEN x.ParentID <> 0 THEN 't'
				ELSE 'f'
			END as BOOLEAN) as b
		FROM
			Parent x
	) t2
UNION ALL
SELECT
	t4.a,
	t4.b
FROM
	(
		SELECT
			Cast(CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						Child t3
				)
					THEN 't'
				ELSE 'f'
			END as BOOLEAN) as a,
			Cast(NULL as BOOLEAN) as b
		FROM
			Parent x_1
	) t4


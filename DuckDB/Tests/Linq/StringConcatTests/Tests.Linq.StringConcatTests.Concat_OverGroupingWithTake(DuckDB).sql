-- DuckDB

SELECT
	t1.Key_1,
	Coalesce((
		SELECT
			STRING_AGG(Coalesce(t2.Value_1, ''), '')
		FROM
			(
				SELECT
					x."Value" as Value_1
				FROM
					ConcatGroupedEntity x
				WHERE
					t1.Key_1 = x.GrpId
				ORDER BY
					x.PK
				LIMIT 2
			) t2
	), '')
FROM
	(
		SELECT DISTINCT
			g_1.GrpId as Key_1
		FROM
			ConcatGroupedEntity g_1
	) t1
ORDER BY
	t1.Key_1

-- DuckDB

SELECT
	t1.PK,
	t1.GrpId,
	t1."Value"
FROM
	ConcatGroupedEntity t1


-- YDB Ydb
SELECT
	g_1.Id as Id,
	t2.V as V
FROM
	BatchGroup g_1
		LEFT JOIN (
			SELECT
				t1.V as V,
				t1.GroupId as GroupId
			FROM
				(
					SELECT
						i.`Value` as V,
						ROW_NUMBER() OVER (PARTITION BY i.GroupId ORDER BY i.Id) as rn,
						i.GroupId as GroupId
					FROM
						BatchItem i
				) t1
			WHERE
				t1.rn = 1
		) t2 ON t2.GroupId = g_1.Id
WHERE
	g_1.Id = 1
UNION ALL
SELECT
	g_2.Id as Id,
	t4.V as V
FROM
	BatchGroup g_2
		LEFT JOIN (
			SELECT
				t3.V as V,
				t3.GroupId as GroupId
			FROM
				(
					SELECT
						i_1.`Value` as V,
						ROW_NUMBER() OVER (PARTITION BY i_1.GroupId ORDER BY i_1.Id) as rn,
						i_1.GroupId as GroupId
					FROM
						BatchItem i_1
				) t3
			WHERE
				t3.rn = 1
		) t4 ON t4.GroupId = g_2.Id
WHERE
	g_2.Id = 2

-- YDB Ydb
$CTE_1 = 	SELECT
		COUNT(*) as Item2
	FROM
		BatchItem t1
;

SELECT
	$CTE_1 as Item2


-- Informix.DB2 Informix
SELECT
	t1.Id
FROM
	BatchGroup g_1
		INNER JOIN (
			SELECT
				i.Id,
				ROW_NUMBER() OVER (PARTITION BY i.GroupId ORDER BY i.GroupId) as rn,
				i.GroupId
			FROM
				BatchItem i
			WHERE
				i.Id > 8
		) t1 ON t1.GroupId = g_1.Id AND t1.rn = 1
ORDER BY
	g_1.Id

-- Informix.DB2 Informix
SELECT
	t1.Id
FROM
	BatchGroup g_1
		LEFT JOIN (
			SELECT
				i.Id,
				ROW_NUMBER() OVER (PARTITION BY i.GroupId ORDER BY i.GroupId) as rn,
				i.GroupId
			FROM
				BatchItem i
			WHERE
				i.Id > 8
		) t1 ON t1.GroupId = g_1.Id AND t1.rn = 1
ORDER BY
	g_1.Id


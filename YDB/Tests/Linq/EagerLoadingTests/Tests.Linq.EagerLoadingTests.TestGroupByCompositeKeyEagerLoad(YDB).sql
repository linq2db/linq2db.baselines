-- YDB Ydb
SELECT
	m_1.MasterId as MasterId,
	d.DetailId as DetailId
FROM
	(
		SELECT DISTINCT
			g_1.MasterId as MasterId
		FROM
			DetailClass g_1
	) m_1
		CROSS JOIN DetailClass d
WHERE
	d.MasterId = m_1.MasterId OR d.MasterId IS NULL AND m_1.MasterId IS NULL
ORDER BY
	d.DetailId

-- YDB Ydb
SELECT DISTINCT
	g_1.MasterId as MasterId
FROM
	DetailClass g_1

-- YDB Ydb
SELECT
	t1.DetailId as DetailId,
	t1.MasterId as MasterId,
	t1.DetailValue as DetailValue
FROM
	DetailClass t1


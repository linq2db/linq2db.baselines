-- YDB Ydb
SELECT
	m_1.Id1 as Id1,
	d.DetailId as DetailId
FROM
	(
		SELECT DISTINCT
			a_Master.Id1 as Id1
		FROM
			DetailClass g_1
				LEFT JOIN MasterClass a_Master ON g_1.MasterId = a_Master.Id1
	) m_1
		INNER JOIN DetailClass d ON m_1.Id1 = d.MasterId
ORDER BY
	d.DetailId

-- YDB Ydb
SELECT
	g_2.Id1 as Id1
FROM
	(
		SELECT DISTINCT
			a_Master.Id1 as Id1,
			a_Master.Id2 as Id2
		FROM
			DetailClass g_1
				LEFT JOIN MasterClass a_Master ON g_1.MasterId = a_Master.Id1
	) g_2

-- YDB Ydb
SELECT
	m_1.Id1 as Id1,
	d.DetailId as DetailId,
	d.MasterId as MasterId,
	d.DetailValue as DetailValue
FROM
	(
		SELECT DISTINCT
			a_Master.Id1 as Id1
		FROM
			DetailClass t1
				LEFT JOIN MasterClass a_Master ON t1.MasterId = a_Master.Id1
	) m_1
		INNER JOIN DetailClass d ON m_1.Id1 = d.MasterId

-- YDB Ydb
SELECT
	t1.DetailId as DetailId,
	t1.MasterId as MasterId,
	t1.DetailValue as DetailValue,
	a_Master.Id1 as Id1,
	a_Master.Id2 as Id2,
	a_Master.`Value` as Value_1,
	a_Master.ByteValues as ByteValues
FROM
	DetailClass t1
		LEFT JOIN MasterClass a_Master ON t1.MasterId = a_Master.Id1


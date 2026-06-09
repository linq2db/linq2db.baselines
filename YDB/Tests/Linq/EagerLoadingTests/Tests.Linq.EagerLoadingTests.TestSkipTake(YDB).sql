-- YDB Ydb

SELECT
	m_2.Id1 as Id1,
	d.DetailId as DetailId,
	d.MasterId as MasterId,
	d.DetailValue as DetailValue
FROM
	(
		SELECT DISTINCT
			m_1.Id1 as Id1
		FROM
			MasterClass m_1
	) m_2
		INNER JOIN DetailClass d ON m_2.Id1 = d.MasterId

-- YDB Ydb

SELECT
	m_2.Id1 as Id1,
	d_1.DetailId as DetailId,
	d_1.MasterId as MasterId,
	d_1.DetailValue as DetailValue
FROM
	(
		SELECT DISTINCT
			m_1.Id1 as Id1
		FROM
			MasterClass m_1
	) m_2
		INNER JOIN (
			SELECT
				d.DetailId as DetailId,
				d.MasterId as MasterId,
				d.DetailValue as DetailValue,
				ROW_NUMBER() OVER (PARTITION BY d.MasterId ORDER BY d.DetailId) as rn
			FROM
				DetailClass d
		) d_1 ON m_2.Id1 = d_1.MasterId
WHERE
	d_1.rn > 1 AND d_1.rn <= 3
ORDER BY
	d_1.DetailId

-- YDB Ydb

SELECT
	m_1.Id1 as Id1,
	m_1.Id2 as Id2,
	m_1.`Value` as Value_1,
	m_1.ByteValues as ByteValues
FROM
	MasterClass m_1

-- YDB Ydb

SELECT
	m_1.Id1 as Id1,
	d.DetailId as DetailId,
	d.MasterId as MasterId,
	d.DetailValue as DetailValue
FROM
	(
		SELECT DISTINCT
			t1.Id1 as Id1
		FROM
			MasterClass t1
	) m_1
		INNER JOIN DetailClass d ON m_1.Id1 = d.MasterId

-- YDB Ydb

SELECT
	t1.Id1 as Id1,
	t1.Id2 as Id2,
	t1.`Value` as Value_1,
	t1.ByteValues as ByteValues
FROM
	MasterClass t1


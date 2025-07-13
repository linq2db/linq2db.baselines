BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	m_2.Id1,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	(
		SELECT DISTINCT
			m_1.Id1 as Id1
		FROM
			MasterClass m_1
		WHERE
			m_1.Id1 >= 0
	) m_2
		INNER JOIN DetailClass d ON m_2.Id1 = d.MasterId

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	m_2.Id1,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	(
		SELECT DISTINCT
			m_1.Id1 as Id1
		FROM
			MasterClass m_1
		WHERE
			m_1.Id1 >= 0
	) m_2
		INNER JOIN DetailClass d ON m_2.Id1 = d.MasterId
WHERE
	d.DetailId % 2 = 0

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	m_2.Id1,
	d.DetailId
FROM
	(
		SELECT DISTINCT
			m_1.Id1 as Id1
		FROM
			MasterClass m_1
		WHERE
			m_1.Id1 >= 0
	) m_2
		INNER JOIN DetailClass d ON m_2.Id1 = d.MasterId
WHERE
	d.DetailId % 2 = 0

BeforeExecute
-- ClickHouse.Client ClickHouse (asynchronously)

SELECT
	m_1.Id1 + 100,
	m_1.Id1
FROM
	MasterClass m_1
WHERE
	m_1.Id1 >= 0
ORDER BY
	m_1.Id2 DESC


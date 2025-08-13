BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	m_1.DetailId,
	m_1.Id1,
	d_1.SubDetailId,
	d_1.DetailId,
	d_1.SubDetailValue
FROM
	(
		SELECT DISTINCT
			d.DetailId as DetailId,
			t1.Id1 as Id1
		FROM
			(
				SELECT DISTINCT
					master_1.Id1 as Id1
				FROM
					MasterClass master_1
				WHERE
					master_1.Id1 > 5
			) t1
				INNER JOIN DetailClass d ON d.MasterId = t1.Id1
	) m_1
		INNER JOIN SubDetailClass d_1 ON d_1.DetailId = m_1.DetailId

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	m_1.DetailId,
	m_1.Id1,
	d_1.SubDetailId,
	d_1.DetailId,
	d_1.SubDetailValue
FROM
	(
		SELECT DISTINCT
			d.DetailId as DetailId,
			t1.Id1 as Id1
		FROM
			(
				SELECT DISTINCT
					master_1.Id1 as Id1
				FROM
					MasterClass master_1
				WHERE
					master_1.Id1 > 5
			) t1
				INNER JOIN DetailClass d ON d.MasterId = t1.Id1
	) m_1
		INNER JOIN SubDetailClass d_1 ON m_1.DetailId = d_1.DetailId

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	m_1.Id1,
	d.DetailId
FROM
	(
		SELECT DISTINCT
			master_1.Id1 as Id1
		FROM
			MasterClass master_1
		WHERE
			master_1.Id1 > 5
	) m_1
		INNER JOIN DetailClass d ON d.MasterId = m_1.Id1

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	master_1.Id1
FROM
	MasterClass master_1
WHERE
	master_1.Id1 > 5


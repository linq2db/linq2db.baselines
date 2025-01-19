﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id1,
	m_1.Id2,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	MasterClass m_1
		INNER JOIN DetailClass d ON d.MasterId = m_1.Id1 AND d.MasterId = m_1.Id2
WHERE
	m_1.Id1 > 5 AND d.DetailId % 2 = 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id1,
	m_1.Id2,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	MasterClass m_1
		INNER JOIN DetailClass d ON d.MasterId = m_1.Id1 AND d.MasterId = m_1.Id2
WHERE
	m_1.Id1 > 5 AND d.DetailId % 2 = 0 AND d.DetailId % 2 = 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id1,
	m_1.Id2,
	d.DetailValue
FROM
	MasterClass m_1
		INNER JOIN DetailClass d ON d.MasterId = m_1.Id1 AND d.MasterId = m_1.Id2
WHERE
	m_1.Id1 > 5 AND d.DetailId % 2 = 0 AND d.DetailId % 2 = 0

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id1,
	m_1.Id2
FROM
	MasterClass m_1
WHERE
	m_1.Id1 > 5


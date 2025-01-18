BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id1,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	(
		SELECT DISTINCT
			t2.Id1 as Id1
		FROM
			(
				SELECT
					t1.Id1 as Id1
				FROM
					MasterClass t1
				LIMIT 20
			) t2
	) m_1
		INNER JOIN DetailClass d ON m_1.Id1 = d.MasterId

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id1,
	t1.Id2,
	t1.Value,
	t1.ByteValues
FROM
	MasterClass t1
LIMIT 20


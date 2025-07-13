BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.Id1,
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	(
		SELECT DISTINCT
			t1.Id1 as Id1
		FROM
			(
				SELECT
					dd.Id1 as Id1
				FROM
					MasterClass dd
				ORDER BY
					dd.Id2 DESC
				LIMIT 20
			) t1
				INNER JOIN MasterClass mm ON t1.Id1 = mm.Id1
	) m_1
		INNER JOIN DetailClass d ON m_1.Id1 = d.MasterId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	dd_1.Id1,
	mm.Id1,
	mm.Id2,
	mm.Value,
	mm.ByteValues
FROM
	(
		SELECT
			dd.Id1 as Id1
		FROM
			MasterClass dd
		ORDER BY
			dd.Id2 DESC
		LIMIT 20
	) dd_1
		INNER JOIN MasterClass mm ON dd_1.Id1 = mm.Id1


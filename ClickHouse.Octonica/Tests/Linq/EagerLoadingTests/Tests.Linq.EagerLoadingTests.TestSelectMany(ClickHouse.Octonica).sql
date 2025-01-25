BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.DetailId,
	d_1.SubDetailId,
	d_1.DetailId,
	d_1.SubDetailValue
FROM
	(
		SELECT DISTINCT
			d.DetailId as DetailId
		FROM
			(
				SELECT
					*
				FROM
					MasterClass t1
				LIMIT 20
			) t2
				CROSS JOIN DetailClass d
	) m_1
		INNER JOIN SubDetailClass d_1 ON d_1.DetailId = m_1.DetailId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	m_1.DetailId,
	d_1.SubDetailId,
	d_1.DetailId,
	d_1.SubDetailValue
FROM
	(
		SELECT DISTINCT
			d.DetailId as DetailId
		FROM
			(
				SELECT
					*
				FROM
					MasterClass t1
				LIMIT 20
			) t2
				CROSS JOIN DetailClass d
	) m_1
		INNER JOIN SubDetailClass d_1 ON m_1.DetailId = d_1.DetailId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	d.DetailId,
	d.MasterId,
	d.DetailValue
FROM
	(
		SELECT
			*
		FROM
			MasterClass t1
		LIMIT 20
	) m_1
		CROSS JOIN DetailClass d


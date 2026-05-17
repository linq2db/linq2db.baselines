-- Informix.DB2 Informix

SELECT
	m_1.Key_1,
	d_1.Value_1
FROM
	(
		SELECT DISTINCT
			g_1.GrpId as Key_1
		FROM
			ConcatGroupedEntity g_1
	) m_1
		INNER JOIN (
			SELECT
				d."Value" as Value_1,
				ROW_NUMBER() OVER (PARTITION BY d.GrpId ORDER BY d.PK) as rn,
				d.GrpId,
				d.PK
			FROM
				ConcatGroupedEntity d
		) d_1 ON m_1.Key_1 = d_1.GrpId AND d_1.rn <= 2
ORDER BY
	m_1.Key_1,
	d_1.PK

-- Informix.DB2 Informix

SELECT DISTINCT
	g_1.GrpId
FROM
	ConcatGroupedEntity g_1
ORDER BY
	g_1.GrpId

-- Informix.DB2 Informix

SELECT
	t1.PK,
	t1.GrpId,
	t1."Value"
FROM
	ConcatGroupedEntity t1


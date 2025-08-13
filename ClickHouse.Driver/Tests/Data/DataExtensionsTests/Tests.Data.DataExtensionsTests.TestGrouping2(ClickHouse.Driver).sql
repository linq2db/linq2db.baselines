BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	m_1.FirstName,
	d.PersonID
FROM
	(
		SELECT DISTINCT
			g_1.FirstName as FirstName
		FROM
			Person g_1
	) m_1
		INNER JOIN Person d ON m_1.FirstName = d.FirstName

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	g_1.FirstName
FROM
	Person g_1
GROUP BY
	g_1.FirstName


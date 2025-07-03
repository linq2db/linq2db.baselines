BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.PersonID,
	m_1.FirstName,
	m_1.PersonID,
	m_1.LastName,
	m_1.MiddleName,
	m_1.Gender
FROM
	Person m_1
WHERE
	m_1.PersonID = 1 AND m_1.LastName <> 'test' OR m_1.FirstName <> 'test' AND m_1.PersonID = 2

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	x.PersonID
FROM
	Person x
WHERE
	x.PersonID = 1 AND x.LastName <> 'test' OR x.FirstName <> 'test' AND x.PersonID = 2
GROUP BY
	x.PersonID


BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	gr.Gender,
	COUNT(*)
FROM
	Person gr
GROUP BY
	gr.Gender

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	m_1.Key_1,
	d.FirstName,
	d.PersonID,
	d.LastName,
	d.MiddleName,
	d.Gender
FROM
	(
		SELECT DISTINCT
			t1.Gender as Key_1
		FROM
			Person t1
	) m_1
		INNER JOIN Person d ON m_1.Key_1 = d.Gender

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Gender
FROM
	Person t1
GROUP BY
	t1.Gender

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

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.PersonID
FROM
	Person t1
GROUP BY
	t1.PersonID

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

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.PersonID
FROM
	Person t1
GROUP BY
	t1.PersonID


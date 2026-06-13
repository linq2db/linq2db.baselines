-- YDB Ydb

SELECT
	m_1.Key_1 as Key_1,
	d.FirstName as FirstName,
	d.PersonID as ID,
	d.LastName as LastName,
	d.MiddleName as MiddleName,
	d.Gender as Gender
FROM
	(
		SELECT DISTINCT
			t1.FirstName as Key_1
		FROM
			Person t1
	) m_1
		INNER JOIN Person d ON m_1.Key_1 = d.FirstName

-- YDB Ydb

SELECT
	t2.Key_1 as Key_1,
	t2.Key_1 as Key_2
FROM
	(
		SELECT DISTINCT
			t1.FirstName as Key_1
		FROM
			Person t1
	) t2


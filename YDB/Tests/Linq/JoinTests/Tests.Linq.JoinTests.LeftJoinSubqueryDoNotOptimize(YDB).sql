-- YDB Ydb

SELECT
	p.PersonID as ID,
	Coalesce(m_2.MiddleName, 'default2'u) as MiddleName
FROM
	Person p
		LEFT JOIN (
			SELECT
				Coalesce(m_1.MiddleName, 'default1'u) as MiddleName,
				m_1.PersonID + 1 as c1
			FROM
				Person m_1
		) m_2 ON p.PersonID = m_2.c1

-- YDB Ydb

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1


-- YDB Ydb

SELECT
	m_1.PersonID as ID,
	d.PersonID as PersonID,
	d.Diagnosis as Diagnosis
FROM
	Person m_1
		INNER JOIN Patient d ON m_1.PersonID = d.PersonID
WHERE
	Unicode::ToLower(m_1.FirstName) LIKE '%test%'u ESCAPE '~'s

-- YDB Ydb

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID
FROM
	Person p
WHERE
	Unicode::ToLower(p.FirstName) LIKE '%test%'u ESCAPE '~'s


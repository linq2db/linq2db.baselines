-- YDB Ydb
SELECT
	m_1.Gender as Gender,
	d.PersonID as PersonID
FROM
	(
		SELECT DISTINCT
			p.Gender as Gender
		FROM
			Person p
	) m_1
		INNER JOIN Person d ON d.Gender = m_1.Gender

-- YDB Ydb
SELECT
	p.PersonID as PersonID,
	p.Gender as Gender
FROM
	Person p
ORDER BY
	p.PersonID


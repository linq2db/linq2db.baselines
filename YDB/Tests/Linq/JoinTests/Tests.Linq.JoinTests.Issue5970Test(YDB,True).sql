-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 2
DECLARE $Ids0_3 Int32
SET     $Ids0_3 = 3
DECLARE $Ids0_4 Int32
SET     $Ids0_4 = 4

SELECT
	p.PersonID as PersonID,
	CASE
		WHEN m_2.MiddleName IS NULL THEN 'default2'u
		ELSE m_2.MiddleName
	END as MiddleName
FROM
	Person p
		LEFT JOIN (
			SELECT
				Coalesce(m_1.MiddleName, 'default1'u) as MiddleName,
				m_1.PersonID + 1 as c1
			FROM
				Person m_1
		) m_2 ON p.PersonID = m_2.c1
WHERE
	p.PersonID IN ($Ids0_1, $Ids0_2, $Ids0_3, $Ids0_4)
ORDER BY
	p.PersonID

-- YDB Ydb
SELECT
	t1.FirstName as FirstName,
	t1.PersonID as PersonID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1


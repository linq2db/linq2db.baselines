-- ClickHouse.Octonica ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		a_Patient.PersonID as Id
	FROM
		Person s
			LEFT JOIN Patient a_Patient ON s.PersonID = a_Patient.PersonID
	UNION ALL
	SELECT
		p.PersonID as Id
	FROM
		cte t1
			INNER JOIN Patient p ON t1.Id = p.PersonID + 1
)
SELECT
	m_1.Item1,
	d.FirstName,
	d.PersonID,
	d.LastName,
	d.MiddleName,
	d.Gender
FROM
	(
		SELECT DISTINCT
			t2.Id as Item1
		FROM
			cte t2
				INNER JOIN Patient p_1 ON t2.Id = p_1.PersonID
	) m_1
		INNER JOIN Person d ON d.PersonID = m_1.Item1

-- ClickHouse.Octonica ClickHouse

WITH RECURSIVE cte AS
(
	SELECT
		a_Patient.PersonID as Id
	FROM
		Person s
			LEFT JOIN Patient a_Patient ON s.PersonID = a_Patient.PersonID
	UNION ALL
	SELECT
		p.PersonID as Id
	FROM
		cte t1
			INNER JOIN Patient p ON t1.Id = p.PersonID + 1
)
SELECT
	r.Id
FROM
	cte r
		INNER JOIN Patient p_1 ON r.Id = p_1.PersonID


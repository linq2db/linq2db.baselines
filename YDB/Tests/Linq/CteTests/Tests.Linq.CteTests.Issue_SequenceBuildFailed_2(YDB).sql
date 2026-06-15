-- YDB Ydb

$CTE_1 = 	SELECT
		a_Patient.PersonID as PersonID
	FROM
		Person s
			LEFT JOIN Patient a_Patient ON s.PersonID = a_Patient.PersonID
;

SELECT
	m_1.PersonID as PersonID,
	d.FirstName as FirstName,
	d.PersonID as ID,
	d.LastName as LastName,
	d.MiddleName as MiddleName,
	d.Gender as Gender
FROM
	(
		SELECT DISTINCT
			t1.PersonID as PersonID
		FROM
			$CTE_1 t1
				INNER JOIN Patient p ON t1.PersonID = p.PersonID
	) m_1
		INNER JOIN Person d ON d.PersonID = m_1.PersonID

-- YDB Ydb

$CTE_1 = 	SELECT
		a_Patient.PersonID as PersonID
	FROM
		Person s
			LEFT JOIN Patient a_Patient ON s.PersonID = a_Patient.PersonID
;

SELECT
	r.PersonID as PersonID
FROM
	$CTE_1 r
		INNER JOIN Patient p ON r.PersonID = p.PersonID


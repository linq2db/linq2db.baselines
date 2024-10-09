BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	e.FirstName,
	CASE
		WHEN a_Patient.PersonID IS NOT NULL AND a_Person.MiddleName IS NOT NULL
			THEN true
		ELSE false
	END,
	a_Person.MiddleName
FROM
	Person e
		LEFT JOIN Patient a_Patient ON e.PersonID = a_Patient.PersonID
		LEFT JOIN Person a_Person ON a_Patient.PersonID = a_Person.PersonID


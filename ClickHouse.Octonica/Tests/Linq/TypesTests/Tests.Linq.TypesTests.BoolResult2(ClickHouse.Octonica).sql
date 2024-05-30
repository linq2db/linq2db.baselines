BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN a_Patient.PersonID IS NOT NULL THEN true
		ELSE false
	END
FROM
	Person p
		LEFT JOIN Patient a_Patient ON p.PersonID = a_Patient.PersonID


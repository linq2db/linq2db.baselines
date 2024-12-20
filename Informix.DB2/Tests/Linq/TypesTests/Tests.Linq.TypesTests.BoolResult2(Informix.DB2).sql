BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN a_Patient.PersonID IS NOT NULL THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM
	Person p
		LEFT JOIN Patient a_Patient ON p.PersonID = a_Patient.PersonID


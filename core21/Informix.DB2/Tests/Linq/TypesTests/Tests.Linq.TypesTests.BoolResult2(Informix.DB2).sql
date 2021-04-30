﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN a_Patient.PersonID IS NOT NULL
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM
	Person p
		LEFT JOIN Patient a_Patient ON p.PersonID = a_Patient.PersonID


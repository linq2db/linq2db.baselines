﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1
ORDER BY
	CASE
		WHEN t1.PersonID IN (1, 3) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END


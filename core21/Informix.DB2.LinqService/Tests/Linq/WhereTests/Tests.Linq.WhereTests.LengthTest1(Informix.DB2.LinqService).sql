﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	nm.MiddleName
FROM
	Person nm
WHERE
	NOT (Length(nm.MiddleName) IS NOT NULL AND Length(nm.MiddleName) = 0)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1


﻿BeforeExecute
-- Informix.DB2 Informix

SELECT
	nm.MiddleName
FROM
	Person nm
WHERE
	(Length(nm.MiddleName) <> 0 OR Length(nm.MiddleName) IS NULL)

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


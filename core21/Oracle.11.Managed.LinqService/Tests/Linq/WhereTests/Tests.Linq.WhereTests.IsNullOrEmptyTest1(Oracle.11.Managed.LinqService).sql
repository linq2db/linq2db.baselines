﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	nm.MiddleName
FROM
	Person nm
WHERE
	NOT (nm.MiddleName IS NULL OR Length(nm.MiddleName) IS NOT NULL AND Length(nm.MiddleName) = 0)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	t1.FirstName, 
	t1.PersonID, 
	t1.LastName, 
	t1.MiddleName, 
	t1.Gender
FROM
	Person t1


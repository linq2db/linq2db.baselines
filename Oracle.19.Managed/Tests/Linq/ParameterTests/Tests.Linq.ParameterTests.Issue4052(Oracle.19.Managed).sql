﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 1

SELECT
	c_1."FirstName",
	c_1."PersonID",
	c_1."LastName",
	c_1."MiddleName",
	c_1."Gender"
FROM
	"Person" c_1
WHERE
	c_1."PersonID" = :ID AND (CASE
		WHEN c_1."MiddleName" IS NOT NULL
			THEN Lower(Trim(c_1."MiddleName"))
		ELSE ''
	END = '' OR CASE
		WHEN c_1."MiddleName" IS NOT NULL
			THEN Lower(Trim(c_1."MiddleName"))
		ELSE ''
	END IS NULL)


﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @p1 Boolean
SET     @p1 = False
DECLARE @Length_1 Integer -- Int32
SET     @Length_1 = 1

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	CASE
		WHEN :p1 = True THEN Length(p."LastName") - 1
		WHEN Position('p' in p."LastName") = 0
			THEN -1
		ELSE (Length(p."LastName") - Position('p' in Reverse(p."LastName"))) - :Length_1 + 1
	END = 2 AND
	p."PersonID" = 1


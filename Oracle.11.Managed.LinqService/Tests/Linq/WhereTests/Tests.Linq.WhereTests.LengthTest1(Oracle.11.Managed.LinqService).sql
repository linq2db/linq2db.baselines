﻿BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	nm."MiddleName"
FROM
	(
		SELECT
			Length(p."MiddleName") as "Value_1",
			p."MiddleName"
		FROM
			"Person" p
	) nm
WHERE
	nm."Value_1" <> 0 OR nm."Value_1" IS NULL

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1


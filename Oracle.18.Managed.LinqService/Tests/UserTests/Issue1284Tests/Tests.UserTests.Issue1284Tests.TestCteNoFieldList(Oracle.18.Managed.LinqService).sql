﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

WITH "cte"
(
	"FirstName",
	ID,
	"LastName",
	"MiddleName",
	"Gender"
)
AS
(
	SELECT
		x."FirstName",
		x."PersonID",
		x."LastName",
		x."MiddleName",
		x."Gender"
	FROM
		"Person" x
	WHERE
		1 = 1
)
SELECT
	t1."FirstName",
	t1.ID,
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"cte" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	1 = 1


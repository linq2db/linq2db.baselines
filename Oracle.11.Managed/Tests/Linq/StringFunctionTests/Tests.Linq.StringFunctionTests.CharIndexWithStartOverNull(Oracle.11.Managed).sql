-- Oracle.11.Managed Oracle11
SELECT
	InStr(p."MiddleName", 'o', 2)
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- Oracle.11.Managed Oracle11
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- Oracle.11.Managed Oracle11
SELECT
	InStr(p."FirstName", p."MiddleName", 2)
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- Oracle.11.Managed Oracle11
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- Oracle.11.Managed Oracle11
SELECT
	InStr(p."FirstName", CASE
		WHEN p."MiddleName" IS NULL THEN NULL
		ELSE 'o'
	END, 2)
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- Oracle.11.Managed Oracle11
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- Oracle.11.Managed Oracle11
SELECT
	InStr(p."FirstName", 'o', CASE
		WHEN p."MiddleName" IS NULL THEN NULL
		ELSE 1
	END)
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- Oracle.11.Managed Oracle11
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- Oracle.11.Managed Oracle11
SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."MiddleName" IS NULL
ORDER BY
	p."PersonID"

-- Oracle.11.Managed Oracle11
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- Oracle.11.Managed Oracle11
DECLARE @start_1 Int32
SET     @start_1 = 1

SELECT
	InStr(p."FirstName", 'o', :start_1)
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- Oracle.11.Managed Oracle11
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- Oracle.11.Managed Oracle11
DECLARE @nullValuedStart Int32
SET     @nullValuedStart = NULL

SELECT
	InStr(p."FirstName", 'o', :nullValuedStart)
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- Oracle.11.Managed Oracle11
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1


-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	InStr(p."MiddleName", 'o')
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	InStr(p."FirstName", p."MiddleName")
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	InStr(p."FirstName", CASE
		WHEN p."MiddleName" IS NULL THEN NULL
		ELSE 'o'
	END)
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	InStr(p."MiddleName", 'o') = 0
ORDER BY
	p."PersonID"

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1


-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	InStr(p."FirstName", 'x') - 1
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	InStr(p."FirstName", 'x') - 1
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @c Char -- StringFixedLength
SET     @c = 'o'

SELECT
	InStr(p."FirstName", :c) - 1
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @c Char -- StringFixedLength
SET     @c = 'o'

SELECT
	InStr(p."FirstName", :c, 2) - 1
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1


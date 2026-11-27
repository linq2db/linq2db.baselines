-- PostgreSQL.12 PostgreSQL12
SELECT
	CASE
		WHEN Position('o' in Substring(p."MiddleName", 2)) = 0 THEN 0
		ELSE Position('o' in Substring(p."MiddleName", 2)) + 1
	END
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- PostgreSQL.12 PostgreSQL12
SELECT
	CASE
		WHEN Position(p."MiddleName" in Substring(p."FirstName", 2)) = 0
			THEN 0
		ELSE Position(p."MiddleName" in Substring(p."FirstName", 2)) + 1
	END
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- PostgreSQL.12 PostgreSQL12
SELECT
	CASE
		WHEN Position(CASE
			WHEN p."MiddleName" IS NULL THEN NULL
			ELSE 'o'
		END in Substring(p."FirstName", 2)) = 0
			THEN 0
		ELSE Position(CASE
			WHEN p."MiddleName" IS NULL THEN NULL
			ELSE 'o'
		END in Substring(p."FirstName", 2)) + 1
	END
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- PostgreSQL.12 PostgreSQL12
SELECT
	CASE
		WHEN Position('o' in Substring(p."FirstName", CASE
			WHEN p."MiddleName" IS NULL THEN NULL
			ELSE 1
		END)) = 0
			THEN 0
		ELSE Position('o' in Substring(p."FirstName", CASE
			WHEN p."MiddleName" IS NULL THEN NULL
			ELSE 1
		END)) + CASE
			WHEN p."MiddleName" IS NULL THEN NULL
			ELSE 1
		END - 1
	END
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- PostgreSQL.12 PostgreSQL12
SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	p."MiddleName" IS NULL
ORDER BY
	p."PersonID"

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- PostgreSQL.12 PostgreSQL12
DECLARE @start Integer -- Int32
SET     @start = 1

SELECT
	CASE
		WHEN Position('o' in Substring(p."FirstName", :start)) = 0
			THEN 0
		ELSE Position('o' in Substring(p."FirstName", :start)) + :start - 1
	END
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

-- PostgreSQL.12 PostgreSQL12
DECLARE @nullValuedStart Integer -- Int32
SET     @nullValuedStart = NULL

SELECT
	CASE
		WHEN Position('o' in Substring(p."FirstName", :nullValuedStart)) = 0
			THEN 0
		ELSE Position('o' in Substring(p."FirstName", :nullValuedStart)) + :nullValuedStart - 1
	END
FROM
	"Person" p
ORDER BY
	p."PersonID"

-- PostgreSQL.12 PostgreSQL12
SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1


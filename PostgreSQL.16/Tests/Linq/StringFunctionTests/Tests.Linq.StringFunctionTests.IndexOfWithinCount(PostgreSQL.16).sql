-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	CASE
		WHEN Position('r' in Substring(Substring(p."LastName", 1, 7), 3)) = 0
			THEN 0
		ELSE Position('r' in Substring(Substring(p."LastName", 1, 7), 3)) + 2
	END - 1
FROM
	"Person" p
WHERE
	p."PersonID" = 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	CASE
		WHEN Position('n' in Substring(Substring(p."LastName", 1, 5), 3)) = 0
			THEN 0
		ELSE Position('n' in Substring(Substring(p."LastName", 1, 5), 3)) + 2
	END - 1
FROM
	"Person" p
WHERE
	p."PersonID" = 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	CASE
		WHEN Position('o' in Substring(Substring(p."LastName", 1, 7), 3)) = 0
			THEN 0
		ELSE Position('o' in Substring(Substring(p."LastName", 1, 7), 3)) + 2
	END - 1
FROM
	"Person" p
WHERE
	p."PersonID" = 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	CASE
		WHEN Position('o' in Substring(Substring(p."LastName", 1, 8), 3)) = 0
			THEN 0
		ELSE Position('o' in Substring(Substring(p."LastName", 1, 8), 3)) + 2
	END - 1
FROM
	"Person" p
WHERE
	p."PersonID" = 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	CASE
		WHEN Position('r' in Substring(Substring(p."LastName", 1, 7), 3)) = 0
			THEN 0
		ELSE Position('r' in Substring(Substring(p."LastName", 1, 7), 3)) + 2
	END - 1
FROM
	"Person" p
WHERE
	p."PersonID" = 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	CASE
		WHEN Position('o' in Substring(Substring(p."LastName", 1, 7), 3)) = 0
			THEN 0
		ELSE Position('o' in Substring(Substring(p."LastName", 1, 7), 3)) + 2
	END - 1
FROM
	"Person" p
WHERE
	p."PersonID" = 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	CASE
		WHEN Position('o' in Substring(Substring(p."LastName", 1, 8), 3)) = 0
			THEN 0
		ELSE Position('o' in Substring(Substring(p."LastName", 1, 8), 3)) + 2
	END - 1
FROM
	"Person" p
WHERE
	p."PersonID" = 2


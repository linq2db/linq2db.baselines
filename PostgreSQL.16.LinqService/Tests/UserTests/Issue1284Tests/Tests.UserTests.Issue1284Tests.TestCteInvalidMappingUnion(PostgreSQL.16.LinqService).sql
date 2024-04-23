﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

WITH "CTE_1"
(
	"entry_FirstName",
	"entry_ID",
	"entry_LastName",
	"entry_MiddleName",
	"entry_Gender",
	rn
)
AS
(
	SELECT
		x_1."FirstName",
		x_1."ID",
		x_1."LastName",
		x_1."MiddleName",
		x_1."Gender",
		x_1.rn
	FROM
		(
			SELECT
				x."FirstName",
				x."PersonID" as "ID",
				x."LastName",
				x."MiddleName",
				x."Gender",
				1 as rn
			FROM
				"Person" x
			UNION ALL
			SELECT
				person_1."FirstName",
				person_1."PersonID" as "ID",
				person_1."LastName",
				person_1."MiddleName",
				person_1."Gender",
				2 as rn
			FROM
				"Person" person_1
		) x_1
	WHERE
		x_1.rn = 1
)
SELECT
	t1."entry_FirstName",
	t1."entry_ID",
	t1."entry_LastName",
	t1."entry_MiddleName",
	t1."entry_Gender",
	t1.rn
FROM
	"CTE_1" t1
LIMIT 1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."FirstName",
	t1."ID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender",
	t1.rn
FROM
	(
		SELECT
			x."FirstName",
			x."PersonID" as "ID",
			x."LastName",
			x."MiddleName",
			x."Gender",
			1 as rn
		FROM
			"Person" x
		UNION ALL
		SELECT
			person_1."FirstName",
			person_1."PersonID" as "ID",
			person_1."LastName",
			person_1."MiddleName",
			person_1."Gender",
			2 as rn
		FROM
			"Person" person_1
	) t1
WHERE
	t1.rn = 1
LIMIT 1


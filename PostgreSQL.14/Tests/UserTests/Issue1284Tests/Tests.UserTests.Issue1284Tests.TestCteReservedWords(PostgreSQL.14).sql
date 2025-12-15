-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

WITH "CTE_1" ("Obj_Operator")
AS
(
	SELECT
		x."LastName"
	FROM
		"Person" x
)
SELECT
	t1."Obj_Operator"
FROM
	"CTE_1" t1
LIMIT 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	person_1."LastName"
FROM
	"Person" person_1
LIMIT 1


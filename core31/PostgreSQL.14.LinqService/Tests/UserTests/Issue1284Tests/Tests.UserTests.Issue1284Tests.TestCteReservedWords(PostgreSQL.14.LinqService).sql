BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

WITH "CTE_1" ("Operator")
AS
(
	SELECT
		x."LastName"
	FROM
		"Person" x
)
SELECT
	t1."Operator"
FROM
	"CTE_1" t1
LIMIT 1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	x."LastName"
FROM
	"Person" x
LIMIT 1


BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Child" t1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

WITH "CTE1_" (unused)
AS
(
	SELECT
		1
	FROM
		"Child" t1
)
SELECT
	COUNT(*)
FROM
	"CTE1_" t2

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

WITH "CTE1_" (unused)
AS
(
	SELECT
		1
	FROM
		"Child" c_1
)
SELECT
	COUNT(*)
FROM
	"CTE1_" t1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

WITH "CTE1_" (unused)
AS
(
	SELECT
		1
	FROM
		"Child" c_1
)
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"CTE1_" t1
		) THEN True
		ELSE False
	END


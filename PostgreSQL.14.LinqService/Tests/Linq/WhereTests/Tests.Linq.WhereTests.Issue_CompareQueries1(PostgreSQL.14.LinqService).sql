BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1.c1
FROM
	(
		SELECT
			COUNT(p."ID") as c1
		FROM
			(
				SELECT
					rec."PersonID" as "ID"
				FROM
					"Person" rec
				WHERE
					rec."PersonID" IN (1, 2)
			) p
	) t1
LIMIT 2

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1.c1
FROM
	(
		SELECT
			COUNT(p."ID") as c1
		FROM
			(
				SELECT
					rec."PersonID" as "ID"
				FROM
					"Person" rec
				WHERE
					1 = 0
			) p
	) t1
LIMIT 2


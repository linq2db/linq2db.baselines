BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1.c1
FROM
	(
		SELECT
			COUNT(p_1."ID") as c1
		FROM
			(
				SELECT
					rec."PersonID" as "ID"
				FROM
					"Person" rec
				WHERE
					rec."PersonID" IN (1, 2) AND rec."PersonID" NOT IN (
						SELECT
							p."PersonID"
						FROM
							"Person" p
						WHERE
							p."PersonID" IN (3)
					)
			) p_1
	) t1
LIMIT 2

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1.c1
FROM
	(
		SELECT
			COUNT(p_1."ID") as c1
		FROM
			(
				SELECT
					rec."PersonID" as "ID"
				FROM
					"Person" rec
				WHERE
					rec."PersonID" IN (3) AND rec."PersonID" NOT IN (
						SELECT
							p."PersonID"
						FROM
							"Person" p
						WHERE
							p."PersonID" IN (1, 2)
					)
			) p_1
	) t1
LIMIT 2


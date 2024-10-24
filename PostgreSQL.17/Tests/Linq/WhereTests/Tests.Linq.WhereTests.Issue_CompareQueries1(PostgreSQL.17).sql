﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1.c1
FROM
	(
		SELECT
			COUNT(rec."ID") as c1
		FROM
			(
				SELECT
					p."PersonID" as "ID"
				FROM
					"Person" p
				WHERE
					p."PersonID" IN (1, 2)
			) rec
	) t1
LIMIT 2

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1.c1
FROM
	(
		SELECT
			COUNT(rec."ID") as c1
		FROM
			(
				SELECT
					p."PersonID" as "ID"
				FROM
					"Person" p
				WHERE
					1 = 0
			) rec
		WHERE
			rec."ID" NOT IN (
				SELECT
					p_1."PersonID"
				FROM
					"Person" p_1
				WHERE
					p_1."PersonID" IN (1, 2)
			)
	) t1
LIMIT 2


-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	(
		SELECT
			MAX(t1.item)
		FROM
			(VALUES
				(p."PersonID"), (2)
			) t1(item)
	) = 2

-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."PersonID"
FROM
	"Person" p
WHERE
	(
		SELECT
			MIN(t1.item)
		FROM
			(VALUES
				(p."PersonID"), (2)
			) t1(item)
	) = 2


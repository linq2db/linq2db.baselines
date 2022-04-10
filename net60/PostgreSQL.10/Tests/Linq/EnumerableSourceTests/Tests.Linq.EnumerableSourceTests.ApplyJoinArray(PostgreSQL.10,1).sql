BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @doe Text(3) -- String
SET     @doe = 'Doe'

SELECT
	t1.item
FROM
	"Person" p
		INNER JOIN LATERAL (VALUES
			(p."FirstName"), (p."LastName"), ('John'), (:doe)
		) t1(item) ON 1=1

BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @doe Text(4) -- String
SET     @doe = 'Doe1'

SELECT
	t1.item
FROM
	"Person" p
		INNER JOIN LATERAL (VALUES
			(p."FirstName"), (p."LastName"), ('John'), (:doe)
		) t1(item) ON 1=1


-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	p."PersonID"
FROM
	(
		SELECT * FROM "Person" WHERE "PersonID" = @p
	) p


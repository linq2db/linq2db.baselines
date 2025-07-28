BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Mixed" t
WHERE
	t."Int" > 0 AND (t."Str", t."Double", t."Bool") = ('One', 1::float8, True) AND
	EXISTS(
		SELECT
			*
		FROM
			"Mixed" u
		WHERE
			(2, u."Date") > (u."Int", t."Date")
	)


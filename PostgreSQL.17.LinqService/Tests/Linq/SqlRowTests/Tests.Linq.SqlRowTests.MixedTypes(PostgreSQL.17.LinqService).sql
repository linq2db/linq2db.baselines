BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	COUNT(*)
FROM
	"Mixed" t
WHERE
	t."Int" > 0 AND (t."Str", t."Double", t."Bool") = ('One', 1, True) AND
	EXISTS(
		SELECT
			*
		FROM
			"Mixed" u
		WHERE
			(2, u."Date") > (u."Int", t."Date")
	)


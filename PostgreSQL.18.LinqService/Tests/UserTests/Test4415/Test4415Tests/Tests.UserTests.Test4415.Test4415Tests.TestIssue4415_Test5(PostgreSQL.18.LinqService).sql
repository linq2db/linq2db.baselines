BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	t1."LanguageID",
	t1."Name"
FROM
	"Common_Language" t1

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	x."LanguageID",
	x."Name"
FROM
	"Common_Language" x
WHERE
	x."LanguageID" IN (
		SELECT
			Coalesce(MAX(x_1."LanguageID"), '') || 'test'
		FROM
			"Common_Language" x_1
		GROUP BY
			x_1."Name"
	)


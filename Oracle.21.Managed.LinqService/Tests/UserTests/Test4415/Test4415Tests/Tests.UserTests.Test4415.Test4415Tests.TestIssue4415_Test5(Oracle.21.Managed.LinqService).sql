BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."LanguageID",
	t1."Name"
FROM
	"Common_Language" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

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


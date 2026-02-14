-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	x."LanguageID",
	x."Name"
FROM
	"Common_Language" x
WHERE
	x."LanguageID" IN (
		SELECT
			MAX(x_1."LanguageID") as "Max_1"
		FROM
			"Common_Language" x_1
		GROUP BY
			x_1."Name"
	)


BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	x."LanguageID",
	x."Name"
FROM
	"Common_Language" x
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					MAX(x_1."LanguageID") as "Max_1"
				FROM
					"Common_Language" x_1
				GROUP BY
					x_1."Name"
			) t1
		WHERE
			x."LanguageID" = t1."Max_1" OR x."LanguageID" IS NULL AND t1."Max_1" IS NULL
	)


BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Language"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Common_Language"
(
	"LanguageID" text     NULL,
	"Name"       text     NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Common_Language"
(
	"LanguageID",
	"Name"
)
VALUES
('de','deutsch'),
(NULL,'english')

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	x."LanguageID",
	x."Name"
FROM
	"Common_Language" x
WHERE
	(x."LanguageID" IS NULL AND 1 IN (
		SELECT
			1
		FROM
			"Common_Language" t1
		GROUP BY
			t1."Name"
		HAVING
			Max(t1."LanguageID") || 'test' IS NULL
	) OR x."LanguageID" IS NOT NULL AND x."LanguageID" IN (
		SELECT
			Max(t1."LanguageID") || 'test'
		FROM
			"Common_Language" t1
		GROUP BY
			t1."Name"
	))

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Language"


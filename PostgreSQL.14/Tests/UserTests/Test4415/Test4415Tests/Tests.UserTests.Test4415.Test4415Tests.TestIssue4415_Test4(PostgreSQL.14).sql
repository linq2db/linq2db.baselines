BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Language"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Common_Language"
(
	"LanguageID" text     NULL,
	"Name"       text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Common_Language"
(
	"LanguageID",
	"Name"
)
VALUES
('de','deutsch'),
(NULL,'english')

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
					MAX(x_1."LanguageID") || 'test' as c1
				FROM
					"Common_Language" x_1
				GROUP BY
					x_1."Name"
			) t1
		WHERE
			x."LanguageID" = t1.c1 OR x."LanguageID" IS NULL AND t1.c1 IS NULL
	)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Language"


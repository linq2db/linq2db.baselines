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
	x."LanguageID" IN (
		SELECT
			t1."Max_1"
		FROM
			(
				SELECT
					Max(x_1."LanguageID") as "Max_1"
				FROM
					"Common_Language" x_1
				GROUP BY
					x_1."Name"
			) t1
	)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Language"


﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Common_Language"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Common_Language"
(
	"LanguageID" text     NULL,
	"Name"       text     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Common_Language"
(
	"LanguageID",
	"Name"
)
VALUES
('de','deutsch'),
(NULL,'english')

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
					Max(x_1."LanguageID") as "Max_1"
				FROM
					"Common_Language" x_1
				GROUP BY
					x_1."Name"
			) t1
		WHERE
			(x."LanguageID" = t1."Max_1" OR x."LanguageID" IS NULL AND t1."Max_1" IS NULL)
	)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Common_Language"


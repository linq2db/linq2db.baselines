﻿BeforeExecute
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
	x."LanguageID" IN (
		SELECT
			Max(t1."LanguageID")
		FROM
			"Common_Language" t1
		GROUP BY
			t1."Name"
	)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Language"


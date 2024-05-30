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
DECLARE @LanguageID Text(2) -- String
SET     @LanguageID = 'de'
DECLARE @Name Text(7) -- String
SET     @Name = 'deutsch'

INSERT INTO "Common_Language"
(
	"LanguageID",
	"Name"
)
VALUES
(
	:LanguageID,
	:Name
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @LanguageID Text -- String
SET     @LanguageID = NULL
DECLARE @Name Text(7) -- String
SET     @Name = 'english'

INSERT INTO "Common_Language"
(
	"LanguageID",
	"Name"
)
VALUES
(
	:LanguageID,
	:Name
)

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
			MAX(x_1."LanguageID")
		FROM
			"Common_Language" x_1
		GROUP BY
			x_1."Name"
	)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Language"


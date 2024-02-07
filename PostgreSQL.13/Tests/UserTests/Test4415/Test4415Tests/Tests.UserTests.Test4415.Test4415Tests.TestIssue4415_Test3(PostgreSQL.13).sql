BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Language"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Common_Language"
(
	"LanguageID"            text NOT NULL,
	"Name"                  text     NULL,
	"AlternativeLanguageID" text     NULL,
	"Order"                 Int  NOT NULL,
	"IsoCode"               text     NULL,

	CONSTRAINT "PK_Common_Language" PRIMARY KEY ("LanguageID")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Common_Language"
(
	"LanguageID",
	"Name",
	"AlternativeLanguageID",
	"Order",
	"IsoCode"
)
VALUES
('de','deutsch',NULL,0,NULL)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	x."LanguageID",
	x."Name",
	x."AlternativeLanguageID",
	x."Order",
	x."IsoCode"
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Common_Language"


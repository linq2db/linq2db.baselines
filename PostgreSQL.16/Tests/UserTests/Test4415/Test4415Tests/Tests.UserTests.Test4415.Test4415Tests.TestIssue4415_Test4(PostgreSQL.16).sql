BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Common_Language"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Common_Language"
(
	"LanguageID"            text     NULL,
	"Name"                  text     NULL,
	"AlternativeLanguageID" text     NULL,
	"Order"                 Int  NOT NULL,
	"IsoCode"               text     NULL,

	CONSTRAINT "PK_Common_Language" PRIMARY KEY ("LanguageID")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Max(t1."LanguageID")
FROM
	"Common_Language" t1
GROUP BY
	t1."Name"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Common_Language"


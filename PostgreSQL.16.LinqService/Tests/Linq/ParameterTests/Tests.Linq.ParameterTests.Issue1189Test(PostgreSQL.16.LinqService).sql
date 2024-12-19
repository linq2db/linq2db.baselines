BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1189Customer"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue1189Customer"
(
	"ID"   Int  NOT NULL,
	"NAME" text NOT NULL,

	CONSTRAINT "PK_Issue1189Customer" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	k_1."ID",
	k_1."NAME",
	'2020-02-29 17:54:55.123'::timestamp
FROM
	"Issue1189Customer" k_1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue1189Customer"


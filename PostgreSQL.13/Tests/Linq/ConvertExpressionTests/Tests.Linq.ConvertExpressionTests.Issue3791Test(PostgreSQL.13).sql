BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3791Table"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3791Table"
(
	"Id"      SERIAL  NOT NULL,
	"OtherId" text        NULL,

	CONSTRAINT "PK_Issue3791Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3791GuidTable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3791GuidTable"
(
	"Id" uuid NOT NULL,

	CONSTRAINT "PK_Issue3791GuidTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."OtherId",
	"a_Association"."Id"
FROM
	"Issue3791Table" t1
		LEFT JOIN "Issue3791GuidTable" "a_Association" ON t1."OtherId" = "a_Association"."Id"::text

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3791GuidTable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue3791Table"


BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3791Table"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3791Table"
(
	"Id"      SERIAL  NOT NULL,
	"OtherId" text        NULL,

	CONSTRAINT "PK_Issue3791Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3791GuidTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3791GuidTable"
(
	"Id" uuid NOT NULL,

	CONSTRAINT "PK_Issue3791GuidTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t2."Id",
	t2."OtherId",
	t1."Id"
FROM
	"Issue3791Table" t2
		LEFT JOIN (
			SELECT
				"a_Association"."Id",
				"a_Association"."Id"::text as c1
			FROM
				"Issue3791GuidTable" "a_Association"
		) t1 ON (t2."OtherId" = t1.c1 OR t2."OtherId" IS NULL AND t1.c1 IS NULL)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3791GuidTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3791Table"


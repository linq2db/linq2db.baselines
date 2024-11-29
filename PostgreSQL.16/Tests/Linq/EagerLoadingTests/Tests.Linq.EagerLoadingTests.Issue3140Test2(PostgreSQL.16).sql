BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3140Parent"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3140Parent"
(
	"Id"      Int NOT NULL,
	"ChildId" Int NOT NULL,

	CONSTRAINT "PK_Issue3140Parent" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3140Child"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue3140Child"
(
	"Id"   Int  NOT NULL,
	"Name" text     NULL,

	CONSTRAINT "PK_Issue3140Child" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."ChildId",
	"a_Child"."Id",
	"a_Child"."Name"
FROM
	"Issue3140Parent" t1
		LEFT JOIN "Issue3140Child" "a_Child" ON t1."ChildId" = "a_Child"."Id"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3140Child"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue3140Parent"


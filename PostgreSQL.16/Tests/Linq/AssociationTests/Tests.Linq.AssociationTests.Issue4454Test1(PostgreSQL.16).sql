BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4454Client"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4454Client"
(
	"Id"   Int  NOT NULL,
	"Name" text     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4454Service"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4454Service"
(
	"Id"       Int NOT NULL,
	"IdClient" Int     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	"a_Client1"."Name"
FROM
	"Issue4454Service" s
		INNER JOIN "Issue4454Client" "a_Client1" ON s."IdClient" = "a_Client1"."Id"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4454Service"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4454Client"


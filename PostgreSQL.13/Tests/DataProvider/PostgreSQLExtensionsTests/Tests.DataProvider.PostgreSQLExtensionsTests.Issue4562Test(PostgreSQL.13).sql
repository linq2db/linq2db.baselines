BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4562Table"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4562Table"
(
	"Id"       Int       NOT NULL,
	"Statuses" integer[]     NULL,

	CONSTRAINT "PK_Issue4562Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Issue4562Table"("Id", "Statuses") VALUES(1, '{1, 2, 1, 3, 4}')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Issue4562Table"("Id", "Statuses") VALUES(2, '{1, 4}')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @notAcceptedStatuses Unknown -- Object
SET     @notAcceptedStatuses = {1,2}

SELECT
	x."Id",
	x."Statuses"
FROM
	"Issue4562Table" x
WHERE
	NOT x."Statuses" && :notAcceptedStatuses

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4562Table"


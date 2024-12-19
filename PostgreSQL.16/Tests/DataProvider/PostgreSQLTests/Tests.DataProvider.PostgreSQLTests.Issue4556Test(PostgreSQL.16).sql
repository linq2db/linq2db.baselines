BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4556Table"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4556Table"
(
	"Id"      SERIAL  NOT NULL,
	"Payload" jsonb       NULL,
	"Headers" json        NULL,

	CONSTRAINT "PK_Issue4556Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @value Json -- Object
SET     @value = {[key1, value1]}

MERGE INTO "Issue4556Table" "Target"
USING (VALUES
	(0,'John',:value)
) "Source"
(
	"source_Id",
	"source_Payload",
	"source_Headers"
)
ON ("Target"."Id" = "Source"."source_Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Payload",
	"Headers"
)
VALUES
(
	"Source"."source_Payload",
	"Source"."source_Headers"
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4556Table"


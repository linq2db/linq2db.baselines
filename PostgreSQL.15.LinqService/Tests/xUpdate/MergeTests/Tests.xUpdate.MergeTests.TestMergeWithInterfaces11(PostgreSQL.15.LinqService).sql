BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ReviewIndexes"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "ReviewIndexes"
(
	"Id"    Int  NOT NULL,
	"Value" text     NULL,

	CONSTRAINT "PK_ReviewIndexes" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Text(1) -- String
SET     @Value = '3'

MERGE INTO "ReviewIndexes" "Target"
USING (VALUES
	(1)
) "Source"
(
	"source_Id"
)
ON ("Target"."Id" = "Source"."source_Id")

WHEN MATCHED AND "Target"."Id" <> "Source"."source_Id" THEN
UPDATE
SET
	"Id" = :Id,
	"Value" = :Value

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "ReviewIndexes"


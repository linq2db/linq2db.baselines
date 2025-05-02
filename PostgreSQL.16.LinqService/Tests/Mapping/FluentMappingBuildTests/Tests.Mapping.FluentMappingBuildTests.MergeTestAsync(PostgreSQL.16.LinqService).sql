BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "FluentTemp"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "FluentTemp"
(
	"ID"   Int  NOT NULL,
	"Name" text     NULL,

	CONSTRAINT "PK_FluentTemp" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'

INSERT INTO "FluentTemp"
(
	"ID",
	"Name"
)
VALUES
(
	:ID,
	:Name
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

MERGE INTO "FluentTemp" "Target"
USING (VALUES
	(1,'John II')
) "Source"
(
	"source_ID",
	"source_Name"
)
ON ("Target"."ID" = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"Name" = "Source"."source_Name"

WHEN NOT MATCHED THEN
INSERT
(
	"ID",
	"Name"
)
VALUES
(
	"Source"."source_ID",
	"Source"."source_Name"
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "FluentTemp"


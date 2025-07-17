BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "FluentTemp"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "FluentTemp"
(
	"ID"   Int  NOT NULL,
	"Name" text     NULL,

	CONSTRAINT "PK_FluentTemp" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.15 PostgreSQL (asynchronously)

MERGE INTO "FluentTemp" "Target"
USING (VALUES
	(1,'John II')
) "Source"
(
	"ID",
	"Name"
)
ON ("Target"."ID" = "Source"."ID")

WHEN MATCHED THEN
UPDATE
SET
	"Name" = "Source"."Name"

WHEN NOT MATCHED THEN
INSERT
(
	"ID",
	"Name"
)
VALUES
(
	"Source"."ID",
	"Source"."Name"
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "FluentTemp"


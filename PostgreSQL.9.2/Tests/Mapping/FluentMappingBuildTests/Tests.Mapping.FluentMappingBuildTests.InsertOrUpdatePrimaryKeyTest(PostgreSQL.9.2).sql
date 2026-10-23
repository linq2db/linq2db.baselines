-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS "FluentTemp_InsertOrUpdate"

-- PostgreSQL.9.2 PostgreSQL
CREATE TABLE IF NOT EXISTS "FluentTemp_InsertOrUpdate"
(
	"ID"   Int  NOT NULL,
	"Name" text     NULL,

	CONSTRAINT "PK_FluentTemp_InsertOrUpdate" PRIMARY KEY ("ID")
)

-- PostgreSQL.9.2 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'

INSERT INTO "FluentTemp_InsertOrUpdate"
(
	"ID",
	"Name"
)
VALUES
(
	:ID,
	:Name
)

-- PostgreSQL.9.2 PostgreSQL
UPDATE
	"FluentTemp_InsertOrUpdate"
SET
	"ID" = "FluentTemp_InsertOrUpdate"."ID",
	"Name" = "FluentTemp_InsertOrUpdate"."Name"
WHERE
	"FluentTemp_InsertOrUpdate"."ID" = 1

-- PostgreSQL.9.2 PostgreSQL
DROP TABLE IF EXISTS "FluentTemp_InsertOrUpdate"


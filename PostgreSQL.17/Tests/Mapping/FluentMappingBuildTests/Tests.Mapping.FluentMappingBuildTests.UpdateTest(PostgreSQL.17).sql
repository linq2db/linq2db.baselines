-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "FluentTemp_Update"
(
	"ID"       Int  NOT NULL,
	"Value"    text     NULL,
	"LastName" text     NULL,

	CONSTRAINT "PK_FluentTemp_Update" PRIMARY KEY ("ID")
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'
DECLARE @LastName Text(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp_Update"
(
	"ID",
	"Value",
	"LastName"
)
VALUES
(
	:ID,
	:Name,
	:LastName
)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @Name Text(7) -- String
SET     @Name = 'John II'
DECLARE @LastName Text(4) -- String
SET     @LastName = 'Dory'

UPDATE
	"FluentTemp_Update"
SET
	"Value" = :Name,
	"LastName" = :LastName
WHERE
	"FluentTemp_Update"."ID" = 1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "FluentTemp_Update"


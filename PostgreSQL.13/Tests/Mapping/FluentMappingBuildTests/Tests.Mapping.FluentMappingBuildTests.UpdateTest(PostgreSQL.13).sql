-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "FluentTemp"
(
	"ID"       Int  NOT NULL,
	"Value"    text     NULL,
	"LastName" text     NULL,

	CONSTRAINT "PK_FluentTemp" PRIMARY KEY ("ID")
)

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'
DECLARE @LastName Text(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
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

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Name Text(7) -- String
SET     @Name = 'John II'
DECLARE @LastName Text(4) -- String
SET     @LastName = 'Dory'

UPDATE
	"FluentTemp"
SET
	"Value" = :Name,
	"LastName" = :LastName
WHERE
	"FluentTemp"."ID" = 1

-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "FluentTemp"


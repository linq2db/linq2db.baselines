BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

CREATE TABLE IF NOT EXISTS "FluentTemp"
(
	"ID"       Int  NOT NULL,
	"Value"    text     NULL,
	"LastName" text     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
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

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "FluentTemp"


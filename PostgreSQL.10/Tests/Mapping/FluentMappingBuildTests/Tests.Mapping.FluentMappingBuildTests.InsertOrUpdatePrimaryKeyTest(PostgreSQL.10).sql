-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DROP TABLE IF EXISTS "FluentTemp_InsertOrUpdate"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
CREATE TABLE IF NOT EXISTS "FluentTemp_InsertOrUpdate"
(
	"ID"   Int  NOT NULL,
	"Name" text     NULL,

	CONSTRAINT "PK_FluentTemp_InsertOrUpdate" PRIMARY KEY ("ID")
)

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
INSERT INTO "FluentTemp_InsertOrUpdate" AS t1
(
	"ID",
	"Name"
)
VALUES
(
	1,
	'John II'
)
ON CONFLICT ("ID") DO UPDATE SET
	"ID" = t1."ID",
	"Name" = t1."Name"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DROP TABLE IF EXISTS "FluentTemp_InsertOrUpdate"


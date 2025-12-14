-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "FluentTemp"

-- PostgreSQL.18 PostgreSQL

CREATE TABLE IF NOT EXISTS "FluentTemp"
(
	"ID"   Int  NOT NULL,
	"Name" text     NULL,

	CONSTRAINT "PK_FluentTemp" PRIMARY KEY ("ID")
)

-- PostgreSQL.18 PostgreSQL
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

-- PostgreSQL.18 PostgreSQL

INSERT INTO "FluentTemp" AS t1
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

-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "FluentTemp"


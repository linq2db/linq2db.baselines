-- PostgreSQL.19 PostgreSQL12

DROP TABLE IF EXISTS "FluentTemp_InsertOrUpdate"

-- PostgreSQL.19 PostgreSQL12

CREATE TABLE IF NOT EXISTS "FluentTemp_InsertOrUpdate"
(
	"ID"   Int  NOT NULL,
	"Name" text     NULL,

	CONSTRAINT "PK_FluentTemp_InsertOrUpdate" PRIMARY KEY ("ID")
)

-- PostgreSQL.19 PostgreSQL12
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

-- PostgreSQL.19 PostgreSQL12

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

-- PostgreSQL.19 PostgreSQL12

DROP TABLE IF EXISTS "FluentTemp_InsertOrUpdate"


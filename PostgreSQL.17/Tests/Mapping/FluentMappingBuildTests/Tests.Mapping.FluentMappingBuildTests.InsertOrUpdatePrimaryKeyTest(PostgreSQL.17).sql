BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "FluentTemp"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "FluentTemp"
(
	"ID"   Int  NOT NULL,
	"Name" text     NULL,

	CONSTRAINT "PK_FluentTemp" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "FluentTemp"


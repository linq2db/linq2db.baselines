BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "FluentTemp"

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

CREATE TABLE IF NOT EXISTS "FluentTemp"
(
	"ID"   Int  NOT NULL,
	"Name" text     NULL,

	CONSTRAINT "PK_FluentTemp" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)
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
-- PostgreSQL.18 PostgreSQL (asynchronously)

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
-- PostgreSQL.18 PostgreSQL (asynchronously)

DROP TABLE IF EXISTS "FluentTemp"


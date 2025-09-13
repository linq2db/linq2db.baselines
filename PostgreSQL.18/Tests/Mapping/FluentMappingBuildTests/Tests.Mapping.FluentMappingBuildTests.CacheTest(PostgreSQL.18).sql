BeforeExecute
-- PostgreSQL.18 PostgreSQL

CREATE TABLE IF NOT EXISTS "FluentTemp"
(
	"ID"       Int  NOT NULL,
	"Value"    text     NULL,
	"LastName" text     NULL,

	CONSTRAINT "PK_FluentTemp" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL
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
-- PostgreSQL.18 PostgreSQL

SELECT
	t."ID",
	t."Value",
	t."LastName"
FROM
	"FluentTemp" t
WHERE
	t."ID" = 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "FluentTemp"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

CREATE TABLE IF NOT EXISTS "FluentTemp"
(
	"ID"       Int  NOT NULL,
	"Value"    text     NULL,
	"LastName" text     NULL,

	CONSTRAINT "PK_FluentTemp" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL
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
-- PostgreSQL.18 PostgreSQL

SELECT
	t."ID",
	t."Value",
	t."LastName"
FROM
	"FluentTemp" t
WHERE
	t."ID" = 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "FluentTemp"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

CREATE TABLE IF NOT EXISTS "FluentTemp"
(
	"ID"       Int  NOT NULL,
	"Column"   text     NULL,
	"LastName" text     NULL,

	CONSTRAINT "PK_FluentTemp" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'
DECLARE @LastName Text(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
(
	"ID",
	"Column",
	"LastName"
)
VALUES
(
	:ID,
	:Name,
	:LastName
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t."ID",
	t."Column",
	t."LastName"
FROM
	"FluentTemp" t
WHERE
	t."ID" = 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "FluentTemp"

BeforeExecute
-- PostgreSQL.18 PostgreSQL

CREATE TABLE IF NOT EXISTS "FluentTemp"
(
	"ID"       Int  NOT NULL,
	"Column"   text     NULL,
	"LastName" text     NULL,

	CONSTRAINT "PK_FluentTemp" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'
DECLARE @LastName Text(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp"
(
	"ID",
	"Column",
	"LastName"
)
VALUES
(
	:ID,
	:Name,
	:LastName
)

BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	t."ID",
	t."Column",
	t."LastName"
FROM
	"FluentTemp" t
WHERE
	t."ID" = 1

BeforeExecute
-- PostgreSQL.18 PostgreSQL

DROP TABLE IF EXISTS "FluentTemp"


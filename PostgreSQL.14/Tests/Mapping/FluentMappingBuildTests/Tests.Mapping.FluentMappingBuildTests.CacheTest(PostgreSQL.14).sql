-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

CREATE TABLE IF NOT EXISTS "FluentTemp_Cache"
(
	"ID"       Int  NOT NULL,
	"Value"    text     NULL,
	"LastName" text     NULL,

	CONSTRAINT "PK_FluentTemp_Cache" PRIMARY KEY ("ID")
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'
DECLARE @LastName Text(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp_Cache"
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."ID",
	t."Value",
	t."LastName"
FROM
	"FluentTemp_Cache" t
WHERE
	t."ID" = 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "FluentTemp_Cache"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

CREATE TABLE IF NOT EXISTS "FluentTemp_Cache"
(
	"ID"       Int  NOT NULL,
	"Value"    text     NULL,
	"LastName" text     NULL,

	CONSTRAINT "PK_FluentTemp_Cache" PRIMARY KEY ("ID")
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'
DECLARE @LastName Text(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp_Cache"
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."ID",
	t."Value",
	t."LastName"
FROM
	"FluentTemp_Cache" t
WHERE
	t."ID" = 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "FluentTemp_Cache"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

CREATE TABLE IF NOT EXISTS "FluentTemp_Cache"
(
	"ID"       Int  NOT NULL,
	"Column"   text     NULL,
	"LastName" text     NULL,

	CONSTRAINT "PK_FluentTemp_Cache" PRIMARY KEY ("ID")
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'
DECLARE @LastName Text(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp_Cache"
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."ID",
	t."Column",
	t."LastName"
FROM
	"FluentTemp_Cache" t
WHERE
	t."ID" = 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "FluentTemp_Cache"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

CREATE TABLE IF NOT EXISTS "FluentTemp_Cache"
(
	"ID"       Int  NOT NULL,
	"Column"   text     NULL,
	"LastName" text     NULL,

	CONSTRAINT "PK_FluentTemp_Cache" PRIMARY KEY ("ID")
)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name Text(4) -- String
SET     @Name = 'John'
DECLARE @LastName Text(3) -- String
SET     @LastName = 'Doe'

INSERT INTO "FluentTemp_Cache"
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."ID",
	t."Column",
	t."LastName"
FROM
	"FluentTemp_Cache" t
WHERE
	t."ID" = 1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

DROP TABLE IF EXISTS "FluentTemp_Cache"


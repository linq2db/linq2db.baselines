BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2933Car"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2933Car"
(
	"PersonId" Int     NULL,
	"Id"       Int NOT NULL,

	CONSTRAINT "PK_Issue2933Car" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @PersonId Integer -- Int32
SET     @PersonId = 1
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Issue2933Car"
(
	"PersonId",
	"Id"
)
VALUES
(
	:PersonId,
	:Id
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @PersonId Integer -- Int32
SET     @PersonId = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "Issue2933Car"
(
	"PersonId",
	"Id"
)
VALUES
(
	:PersonId,
	:Id
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2933Person"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2933Person"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Issue2933Person" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Issue2933Person"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2933Pet"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2933Pet"
(
	"Name"     text NOT NULL,
	"Id"       Int  NOT NULL,
	"PersonId" Int  NOT NULL,

	CONSTRAINT "PK_Issue2933Pet" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Name Text(8) -- String
SET     @Name = 'Snuffles'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @PersonId Integer -- Int32
SET     @PersonId = 1

INSERT INTO "Issue2933Pet"
(
	"Name",
	"Id",
	"PersonId"
)
VALUES
(
	:Name,
	:Id,
	:PersonId
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Name Text(5) -- String
SET     @Name = 'Buddy'
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @PersonId Integer -- Int32
SET     @PersonId = 1

INSERT INTO "Issue2933Pet"
(
	"Name",
	"Id",
	"PersonId"
)
VALUES
(
	:Name,
	:Id,
	:PersonId
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x."Id",
	(
		SELECT
			"a_PetIds"."Name"
		FROM
			"Issue2933Pet" "a_PetIds"
		WHERE
			"a_Person"."Id" = "a_PetIds"."PersonId"
		LIMIT 1
	)
FROM
	"Issue2933Car" x
		LEFT JOIN "Issue2933Person" "a_Person" ON x."PersonId" = "a_Person"."Id" AND x."PersonId" IS NOT NULL

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2933Pet"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2933Person"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2933Car"


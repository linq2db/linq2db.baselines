BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2933Car"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2933Car"
(
	"PersonId" Int     NULL,
	"Id"       Int NOT NULL,

	CONSTRAINT "PK_Issue2933Car" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue2933Car"
(
	"PersonId",
	"Id"
)
VALUES
(1,1),
(NULL,2)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2933Person"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2933Person"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Issue2933Person" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue2933Person"
(
	"Id"
)
VALUES
(1)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2933Pet"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2933Pet"
(
	"Name"     text NOT NULL,
	"Id"       Int  NOT NULL,
	"PersonId" Int  NOT NULL,

	CONSTRAINT "PK_Issue2933Pet" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue2933Pet"
(
	"Name",
	"Id",
	"PersonId"
)
VALUES
('Snuffles',1,1),
('Buddy',2,1)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

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
		LEFT JOIN "Issue2933Person" "a_Person" ON x."PersonId" = "a_Person"."Id"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2933Pet"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2933Person"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2933Car"


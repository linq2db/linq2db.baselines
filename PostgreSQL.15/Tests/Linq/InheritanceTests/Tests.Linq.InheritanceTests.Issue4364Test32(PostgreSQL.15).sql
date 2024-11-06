BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4364_BaseThing"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4364_BaseThing"
(
	"Id"                Int NOT NULL,
	"Type"              Int NOT NULL,
	"BaseField"         Int NOT NULL,
	"ConcreteField"     Int     NULL,
	"IntermediateField" Int     NULL,

	CONSTRAINT "PK_Issue4364_BaseThing" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4364_BaseThing"
(
	"Id",
	"Type",
	"BaseField",
	"ConcreteField",
	"IntermediateField"
)
VALUES
(1,1,2,0,0),
(2,2,3,4,0),
(3,101,4,0,6),
(4,102,5,0,0)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4364_Person"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4364_Person"
(
	"Id"       Int  NOT NULL,
	"FullName" text NOT NULL,

	CONSTRAINT "PK_Issue4364_Person" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4364_Person"
(
	"Id",
	"FullName"
)
VALUES
(1,'Person 1'),
(2,'Person 2'),
(3,'Person 3'),
(4,'Person 4'),
(5,'Person 5')

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4364_Interaction"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4364_Interaction"
(
	"Id"       Int NOT NULL,
	"PersonId" Int NOT NULL,
	"ThingId"  Int NOT NULL,

	CONSTRAINT "PK_Issue4364_Interaction" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4364_Interaction"
(
	"Id",
	"PersonId",
	"ThingId"
)
VALUES
(1,2,3),
(2,3,4),
(3,4,1),
(4,1,2)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	b."Type",
	p."FullName"
FROM
	"Issue4364_BaseThing" b
		INNER JOIN "Issue4364_Interaction" i ON b."Id" = i."ThingId"
		INNER JOIN "Issue4364_Person" p ON i."PersonId" = p."Id"
WHERE
	b."Type" = 101 OR b."Type" = 102
ORDER BY
	b."Id"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4364_Interaction"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4364_Person"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4364_BaseThing"


﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4364_BaseThing"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @BaseField Integer -- Int32
SET     @BaseField = 2

INSERT INTO "Issue4364_BaseThing"
(
	"Id",
	"Type",
	"BaseField"
)
VALUES
(
	:Id,
	:Type,
	:BaseField
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Type Integer -- Int32
SET     @Type = 2
DECLARE @BaseField Integer -- Int32
SET     @BaseField = 3
DECLARE @ConcreteField Integer -- Int32
SET     @ConcreteField = 4

INSERT INTO "Issue4364_BaseThing"
(
	"Id",
	"Type",
	"BaseField",
	"ConcreteField"
)
VALUES
(
	:Id,
	:Type,
	:BaseField,
	:ConcreteField
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Type Integer -- Int32
SET     @Type = 101
DECLARE @BaseField Integer -- Int32
SET     @BaseField = 4
DECLARE @IntermediateField Integer -- Int32
SET     @IntermediateField = 6
DECLARE @ConcreteField Integer -- Int32
SET     @ConcreteField = 5

INSERT INTO "Issue4364_BaseThing"
(
	"Id",
	"Type",
	"BaseField",
	"IntermediateField",
	"ConcreteField"
)
VALUES
(
	:Id,
	:Type,
	:BaseField,
	:IntermediateField,
	:ConcreteField
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Type Integer -- Int32
SET     @Type = 102
DECLARE @BaseField Integer -- Int32
SET     @BaseField = 5
DECLARE @IntermediateField Integer -- Int32
SET     @IntermediateField = 6

INSERT INTO "Issue4364_BaseThing"
(
	"Id",
	"Type",
	"BaseField",
	"IntermediateField"
)
VALUES
(
	:Id,
	:Type,
	:BaseField,
	:IntermediateField
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4364_Person"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4364_Person"
(
	"Id"       Int  NOT NULL,
	"FullName" text NOT NULL,

	CONSTRAINT "PK_Issue4364_Person" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @FullName Text(8) -- String
SET     @FullName = 'Person 1'

INSERT INTO "Issue4364_Person"
(
	"Id",
	"FullName"
)
VALUES
(
	:Id,
	:FullName
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @FullName Text(8) -- String
SET     @FullName = 'Person 2'

INSERT INTO "Issue4364_Person"
(
	"Id",
	"FullName"
)
VALUES
(
	:Id,
	:FullName
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @FullName Text(8) -- String
SET     @FullName = 'Person 3'

INSERT INTO "Issue4364_Person"
(
	"Id",
	"FullName"
)
VALUES
(
	:Id,
	:FullName
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @FullName Text(8) -- String
SET     @FullName = 'Person 4'

INSERT INTO "Issue4364_Person"
(
	"Id",
	"FullName"
)
VALUES
(
	:Id,
	:FullName
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @FullName Text(8) -- String
SET     @FullName = 'Person 5'

INSERT INTO "Issue4364_Person"
(
	"Id",
	"FullName"
)
VALUES
(
	:Id,
	:FullName
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4364_Interaction"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4364_Interaction"
(
	"Id"       Int NOT NULL,
	"PersonId" Int NOT NULL,
	"ThingId"  Int NOT NULL,

	CONSTRAINT "PK_Issue4364_Interaction" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @PersonId Integer -- Int32
SET     @PersonId = 2
DECLARE @ThingId Integer -- Int32
SET     @ThingId = 3

INSERT INTO "Issue4364_Interaction"
(
	"Id",
	"PersonId",
	"ThingId"
)
VALUES
(
	:Id,
	:PersonId,
	:ThingId
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @PersonId Integer -- Int32
SET     @PersonId = 3
DECLARE @ThingId Integer -- Int32
SET     @ThingId = 4

INSERT INTO "Issue4364_Interaction"
(
	"Id",
	"PersonId",
	"ThingId"
)
VALUES
(
	:Id,
	:PersonId,
	:ThingId
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @PersonId Integer -- Int32
SET     @PersonId = 4
DECLARE @ThingId Integer -- Int32
SET     @ThingId = 1

INSERT INTO "Issue4364_Interaction"
(
	"Id",
	"PersonId",
	"ThingId"
)
VALUES
(
	:Id,
	:PersonId,
	:ThingId
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @PersonId Integer -- Int32
SET     @PersonId = 1
DECLARE @ThingId Integer -- Int32
SET     @ThingId = 2

INSERT INTO "Issue4364_Interaction"
(
	"Id",
	"PersonId",
	"ThingId"
)
VALUES
(
	:Id,
	:PersonId,
	:ThingId
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	b."Type",
	p."FullName"
FROM
	"Issue4364_BaseThing" b
		INNER JOIN "Issue4364_Interaction" i ON b."Id" = i."ThingId"
		INNER JOIN "Issue4364_Person" p ON i."PersonId" = p."Id"
ORDER BY
	b."Id"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4364_Interaction"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4364_Person"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue4364_BaseThing"


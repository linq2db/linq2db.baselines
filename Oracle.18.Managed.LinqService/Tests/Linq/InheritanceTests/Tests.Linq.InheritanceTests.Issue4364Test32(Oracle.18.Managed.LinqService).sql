﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_BaseThing"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4364_BaseThing"
		(
			"Id"                Int NOT NULL,
			"Type"              Int NOT NULL,
			"BaseField"         Int NOT NULL,
			"ConcreteField"     Int     NULL,
			"IntermediateField" Int     NULL,

			CONSTRAINT "PK_Issue4364_BaseThing" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Type Int32
SET     @Type = 1
DECLARE @BaseField Int32
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Type Int32
SET     @Type = 2
DECLARE @BaseField Int32
SET     @BaseField = 3
DECLARE @ConcreteField Int32
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Type Int32
SET     @Type = 101
DECLARE @BaseField Int32
SET     @BaseField = 4
DECLARE @IntermediateField Int32
SET     @IntermediateField = 6
DECLARE @ConcreteField Int32
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Type Int32
SET     @Type = 102
DECLARE @BaseField Int32
SET     @BaseField = 5
DECLARE @IntermediateField Int32
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
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_Person"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4364_Person"
		(
			"Id"       Int          NOT NULL,
			"FullName" VarChar(255) NOT NULL,

			CONSTRAINT "PK_Issue4364_Person" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @FullName Varchar2(8) -- String
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @FullName Varchar2(8) -- String
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @FullName Varchar2(8) -- String
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @FullName Varchar2(8) -- String
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 5
DECLARE @FullName Varchar2(8) -- String
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
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_Interaction"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue4364_Interaction"
		(
			"Id"       Int NOT NULL,
			"PersonId" Int NOT NULL,
			"ThingId"  Int NOT NULL,

			CONSTRAINT "PK_Issue4364_Interaction" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @PersonId Int32
SET     @PersonId = 2
DECLARE @ThingId Int32
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @PersonId Int32
SET     @PersonId = 3
DECLARE @ThingId Int32
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @PersonId Int32
SET     @PersonId = 4
DECLARE @ThingId Int32
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @PersonId Int32
SET     @PersonId = 1
DECLARE @ThingId Int32
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
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	b."Type",
	p."FullName"
FROM
	"Issue4364_BaseThing" b
		INNER JOIN "Issue4364_Interaction" i ON b."Id" = i."ThingId"
		INNER JOIN "Issue4364_Person" p ON i."PersonId" = p."Id"
WHERE
	b."Type" IN (102, 101)
ORDER BY
	b."Id"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_Interaction"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_Person"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_BaseThing"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


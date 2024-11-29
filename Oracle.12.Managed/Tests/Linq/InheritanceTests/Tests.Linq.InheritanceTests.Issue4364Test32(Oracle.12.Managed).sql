BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_BaseThing"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Issue4364_BaseThing" ("Id", "Type", "BaseField", "ConcreteField", "IntermediateField") VALUES (1,1,2,0,0)
	INTO "Issue4364_BaseThing" ("Id", "Type", "BaseField", "ConcreteField", "IntermediateField") VALUES (2,2,3,4,0)
	INTO "Issue4364_BaseThing" ("Id", "Type", "BaseField", "ConcreteField", "IntermediateField") VALUES (3,101,4,0,6)
	INTO "Issue4364_BaseThing" ("Id", "Type", "BaseField", "ConcreteField", "IntermediateField") VALUES (4,102,5,0,0)
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_Person"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Issue4364_Person" ("Id", "FullName") VALUES (1,'Person 1')
	INTO "Issue4364_Person" ("Id", "FullName") VALUES (2,'Person 2')
	INTO "Issue4364_Person" ("Id", "FullName") VALUES (3,'Person 3')
	INTO "Issue4364_Person" ("Id", "FullName") VALUES (4,'Person 4')
	INTO "Issue4364_Person" ("Id", "FullName") VALUES (5,'Person 5')
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_Interaction"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Issue4364_Interaction" ("Id", "PersonId", "ThingId") VALUES (1,2,3)
	INTO "Issue4364_Interaction" ("Id", "PersonId", "ThingId") VALUES (2,3,4)
	INTO "Issue4364_Interaction" ("Id", "PersonId", "ThingId") VALUES (3,4,1)
	INTO "Issue4364_Interaction" ("Id", "PersonId", "ThingId") VALUES (4,1,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_Interaction"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_Person"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4364_BaseThing"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


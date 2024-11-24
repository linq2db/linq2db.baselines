BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2933Car"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue2933Car"
		(
			"PersonId" Int     NULL,
			"Id"       Int NOT NULL,

			CONSTRAINT "PK_Issue2933Car" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "Issue2933Car" ("PersonId", "Id") VALUES (1,1)
	INTO "Issue2933Car" ("PersonId", "Id") VALUES (NULL,2)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2933Person"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue2933Person"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_Issue2933Person" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "Issue2933Person" ("Id") VALUES (1)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2933Pet"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue2933Pet"
		(
			"Name"     VarChar(255) NOT NULL,
			"Id"       Int          NOT NULL,
			"PersonId" Int          NOT NULL,

			CONSTRAINT "PK_Issue2933Pet" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "Issue2933Pet" ("Name", "Id", "PersonId") VALUES ('Snuffles',1,1)
	INTO "Issue2933Pet" ("Name", "Id", "PersonId") VALUES ('Buddy',2,1)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	x."Id",
	t1."Name"
FROM
	"Issue2933Car" x
		LEFT JOIN "Issue2933Person" a_Person ON x."PersonId" = a_Person."Id"
		LEFT JOIN (
			SELECT
				a_PetIds."Name",
				ROW_NUMBER() OVER (PARTITION BY a_PetIds."PersonId" ORDER BY a_PetIds."PersonId") as "rn",
				a_PetIds."PersonId"
			FROM
				"Issue2933Pet" a_PetIds
		) t1 ON a_Person."Id" = t1."PersonId" AND t1."rn" <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2933Pet"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2933Person"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2933Car"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


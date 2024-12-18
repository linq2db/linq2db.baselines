BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Fact"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Fact"
		(
			"Id" Int NOT NULL,

			CONSTRAINT "PK_Fact" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Fact" ("Id") VALUES (3)
	INTO "Fact" ("Id") VALUES (4)
	INTO "Fact" ("Id") VALUES (5)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Tag"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Tag"
		(
			"Id"     Int          NOT NULL,
			"FactId" Int          NOT NULL,
			"Name"   VarChar(255) NOT NULL,

			CONSTRAINT "PK_Tag" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Tag" ("Id", "FactId", "Name") VALUES (1,3,'Tag3')
	INTO "Tag" ("Id", "FactId", "Name") VALUES (2,3,'Tag3')
	INTO "Tag" ("Id", "FactId", "Name") VALUES (3,4,'Tag4')
	INTO "Tag" ("Id", "FactId", "Name") VALUES (4,6,'Tag6')
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	f."Id",
	ft."Id",
	ft."FactId",
	ft."Name"
FROM
	"Tag" ft
		FULL JOIN "Fact" f ON ft."FactId" = f."Id"
WHERE
	f."Id" > 3 AND f."Id" IS NOT NULL OR ft."FactId" > 3 AND ft."FactId" IS NOT NULL

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Tag"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Fact"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


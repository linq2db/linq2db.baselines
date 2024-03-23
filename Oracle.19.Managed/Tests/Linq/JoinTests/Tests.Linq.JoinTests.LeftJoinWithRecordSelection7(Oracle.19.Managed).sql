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
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	fact_1."Id",
	leftTag."Id",
	leftTag."FactId",
	leftTag."Name"
FROM
	"Fact" fact_1
		LEFT JOIN "Tag" leftTag ON leftTag."FactId" = fact_1."Id"
WHERE
	fact_1."Id" > 3
ORDER BY
	fact_1."Id"

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


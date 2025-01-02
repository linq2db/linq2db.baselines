BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SomeItem"';
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
		CREATE TABLE "SomeItem"
		(
			"Id"      Int NOT NULL,
			"ColorId" Int     NULL,
			"StyleId" Int     NULL
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
	INTO "SomeItem" ("Id", "ColorId", "StyleId") VALUES (1,1,1)
	INTO "SomeItem" ("Id", "ColorId", "StyleId") VALUES (2,2,2)
	INTO "SomeItem" ("Id", "ColorId", "StyleId") VALUES (3,3,3)
	INTO "SomeItem" ("Id", "ColorId", "StyleId") VALUES (4,1,2)
	INTO "SomeItem" ("Id", "ColorId", "StyleId") VALUES (5,2,3)
	INTO "SomeItem" ("Id", "ColorId", "StyleId") VALUES (6,NULL,1)
	INTO "SomeItem" ("Id", "ColorId", "StyleId") VALUES (7,3,NULL)
	INTO "SomeItem" ("Id", "ColorId", "StyleId") VALUES (8,NULL,NULL)
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SomeColor"';
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
		CREATE TABLE "SomeColor"
		(
			"Id"   Int          NOT NULL,
			"Name" VarChar(255)     NULL
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
	INTO "SomeColor" ("Id", "Name") VALUES (1,'Red')
	INTO "SomeColor" ("Id", "Name") VALUES (2,'Green')
	INTO "SomeColor" ("Id", "Name") VALUES (3,'Blue')
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SomeStyle"';
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
		CREATE TABLE "SomeStyle"
		(
			"Id"   Int          NOT NULL,
			"Name" VarChar(255)     NULL
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
	INTO "SomeStyle" ("Id", "Name") VALUES (1,'Bold')
	INTO "SomeStyle" ("Id", "Name") VALUES (2,'Italic')
	INTO "SomeStyle" ("Id", "Name") VALUES (3,'Underline')
SELECT * FROM dual

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	it_1."cond",
	it_1."ColorName",
	it_1."StyleName"
FROM
	"SomeItem" t1
		LEFT JOIN "SomeColor" a_Color ON t1."ColorId" = a_Color."Id"
		LEFT JOIN "SomeStyle" a_Style ON t1."StyleId" = a_Style."Id"
		OUTER APPLY (
			SELECT
				it."ColorName",
				it."StyleName",
				1 as "cond"
			FROM
				(
					SELECT a_Color."Name" AS "ColorName", a_Style."Name" AS "StyleName" FROM sys.dual
					UNION ALL
					SELECT NULL, a_Style."Name" FROM sys.dual) it
		) it_1
WHERE
	it_1."ColorName" = 'Red'

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."ColorId",
	t1."StyleId",
	a_Color."Id",
	a_Color."Name",
	a_Style."Id",
	a_Style."Name"
FROM
	"SomeItem" t1
		LEFT JOIN "SomeColor" a_Color ON t1."ColorId" = a_Color."Id"
		LEFT JOIN "SomeStyle" a_Style ON t1."StyleId" = a_Style."Id"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SomeStyle"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SomeColor"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SomeItem"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


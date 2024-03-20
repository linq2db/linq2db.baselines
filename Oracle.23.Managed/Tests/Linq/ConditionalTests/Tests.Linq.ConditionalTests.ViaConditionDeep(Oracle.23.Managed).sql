BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConditionalData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "ConditionalData"
		(
			"Id"         Int          NOT NULL,
			"StringProp" VarChar(255)     NULL,

			CONSTRAINT "PK_ConditionalData" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "ConditionalData" ("Id", "StringProp") VALUES (1,'String1')
	INTO "ConditionalData" ("Id", "StringProp") VALUES (2,'String2')
	INTO "ConditionalData" ("Id", "StringProp") VALUES (3,NULL)
	INTO "ConditionalData" ("Id", "StringProp") VALUES (4,'String4')
	INTO "ConditionalData" ("Id", "StringProp") VALUES (5,'String5')
	INTO "ConditionalData" ("Id", "StringProp") VALUES (6,NULL)
	INTO "ConditionalData" ("Id", "StringProp") VALUES (7,'String7')
	INTO "ConditionalData" ("Id", "StringProp") VALUES (8,'String8')
	INTO "ConditionalData" ("Id", "StringProp") VALUES (9,NULL)
	INTO "ConditionalData" ("Id", "StringProp") VALUES (10,'String10')
SELECT * FROM dual

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	x_1."Id",
	x_1."child",
	x_1."child_1",
	x_1."StringProp_1"
FROM
	(
		SELECT
			CASE
				WHEN (x."StringProp" = '1' OR x."StringProp" IS NULL) THEN '2'
				WHEN x."StringProp" = '2' THEN x."StringProp"
				ELSE x."StringProp" || '2'
			END as "StringProp",
			CASE
				WHEN (x."StringProp" = '1' OR x."StringProp" IS NULL) THEN NULL
				WHEN x."StringProp" = '2' THEN 1
				ELSE 2
			END as "IntProp",
			x."Id",
			CASE
				WHEN (x."StringProp" = '1' OR x."StringProp" IS NULL) THEN 1
				ELSE 0
			END as "child",
			x."StringProp" as "child_1",
			x."StringProp" || '2' as "StringProp_1"
		FROM
			"ConditionalData" x
	) x_1
WHERE
	x_1."StringProp" LIKE '%2' ESCAPE '~' AND x_1."IntProp" = 2

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."StringProp"
FROM
	"ConditionalData" t1

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConditionalData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


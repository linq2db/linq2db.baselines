BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConditionalData"';
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
-- Oracle.19.Managed Oracle.Managed Oracle12

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
	INTO "ConditionalData" ("Id", "StringProp") VALUES (11,'-1')
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	CASE
		WHEN x."StringProp" = '1' AND x."StringProp" IS NOT NULL OR x."StringProp" IS NULL
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN x."StringProp" = '2' AND x."StringProp" IS NOT NULL
			THEN 1
		ELSE 0
	END,
	x."StringProp",
	1,
	x."StringProp" || '2',
	2
FROM
	"ConditionalData" x
WHERE
	CASE
		WHEN x."StringProp" = '1' AND x."StringProp" IS NOT NULL OR x."StringProp" IS NULL
			THEN '2'
		WHEN x."StringProp" = '2' AND x."StringProp" IS NOT NULL
			THEN x."StringProp"
		ELSE x."StringProp" || '2'
	END LIKE '%2' ESCAPE '~' AND
	CASE
		WHEN x."StringProp" = '1' AND x."StringProp" IS NOT NULL OR x."StringProp" IS NULL
			THEN NULL
		WHEN x."StringProp" = '2' AND x."StringProp" IS NOT NULL
			THEN 1
		ELSE 2
	END = 2 AND
	CASE
		WHEN x."StringProp" = '1' AND x."StringProp" IS NOT NULL OR x."StringProp" IS NULL
			THEN NULL
		WHEN x."StringProp" = '2' AND x."StringProp" IS NOT NULL
			THEN 1
		ELSE 2
	END IS NOT NULL

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."StringProp"
FROM
	"ConditionalData" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ConditionalData"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


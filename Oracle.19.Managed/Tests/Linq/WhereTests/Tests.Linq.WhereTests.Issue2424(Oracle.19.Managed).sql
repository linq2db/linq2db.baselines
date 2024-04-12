BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Isue2424Table"';
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
		CREATE TABLE "Isue2424Table"
		(
			"Id"       Int          NOT NULL,
			"StrValue" VarChar(255)     NULL
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
	INTO "Isue2424Table" ("Id", "StrValue") VALUES (1,'1')
	INTO "Isue2424Table" ("Id", "StrValue") VALUES (3,'3')
	INTO "Isue2424Table" ("Id", "StrValue") VALUES (5,'5')
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" >= '4'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" >= '4'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" <= '2'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" <= '2'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" > '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" > '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" < '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" < '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" = '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" = '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" <= '2'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" <= '2'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" >= '4'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" >= '4'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" < '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" < '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" > '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" > '3'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" >= '5'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" >= '5'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" <= '1'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	i."StrValue" <= '1'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Isue2424Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


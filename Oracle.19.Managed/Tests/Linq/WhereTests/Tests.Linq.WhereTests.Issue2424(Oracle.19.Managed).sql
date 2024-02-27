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
	0 <= CASE
		WHEN i."StrValue" > '4' THEN 1
		WHEN i."StrValue" = '4' THEN 0
		ELSE -1
	END
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	CASE
		WHEN i."StrValue" > '4' THEN 1
		WHEN i."StrValue" = '4' THEN 0
		ELSE -1
	END >= 0
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	0 >= CASE
		WHEN i."StrValue" > '2' THEN 1
		WHEN i."StrValue" = '2' THEN 0
		ELSE -1
	END
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	CASE
		WHEN i."StrValue" > '2' THEN 1
		WHEN i."StrValue" = '2' THEN 0
		ELSE -1
	END <= 0
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	0 < CASE
		WHEN i."StrValue" > '3' THEN 1
		WHEN i."StrValue" = '3' THEN 0
		ELSE -1
	END
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	CASE
		WHEN i."StrValue" > '3' THEN 1
		WHEN i."StrValue" = '3' THEN 0
		ELSE -1
	END > 0
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	0 > CASE
		WHEN i."StrValue" > '3' THEN 1
		WHEN i."StrValue" = '3' THEN 0
		ELSE -1
	END
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	CASE
		WHEN i."StrValue" > '3' THEN 1
		WHEN i."StrValue" = '3' THEN 0
		ELSE -1
	END < 0
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	0 = CASE
		WHEN i."StrValue" > '3' THEN 1
		WHEN i."StrValue" = '3' THEN 0
		ELSE -1
	END
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	CASE
		WHEN i."StrValue" > '3' THEN 1
		WHEN i."StrValue" = '3' THEN 0
		ELSE -1
	END = 0
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	0 >= CASE
		WHEN i."StrValue" > '2' THEN 1
		WHEN i."StrValue" = '2' THEN 0
		ELSE -1
	END
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	CASE
		WHEN i."StrValue" > '2' THEN 1
		WHEN i."StrValue" = '2' THEN 0
		ELSE -1
	END <= 0
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	0 <= CASE
		WHEN i."StrValue" > '4' THEN 1
		WHEN i."StrValue" = '4' THEN 0
		ELSE -1
	END
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	CASE
		WHEN i."StrValue" > '4' THEN 1
		WHEN i."StrValue" = '4' THEN 0
		ELSE -1
	END >= 0
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	0 > CASE
		WHEN i."StrValue" > '3' THEN 1
		WHEN i."StrValue" = '3' THEN 0
		ELSE -1
	END
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	CASE
		WHEN i."StrValue" > '3' THEN 1
		WHEN i."StrValue" = '3' THEN 0
		ELSE -1
	END < 0
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	0 < CASE
		WHEN i."StrValue" > '3' THEN 1
		WHEN i."StrValue" = '3' THEN 0
		ELSE -1
	END
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	CASE
		WHEN i."StrValue" > '3' THEN 1
		WHEN i."StrValue" = '3' THEN 0
		ELSE -1
	END > 0
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	0 <= CASE
		WHEN i."StrValue" > '5' THEN 1
		WHEN i."StrValue" = '5' THEN 0
		ELSE -1
	END
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	CASE
		WHEN i."StrValue" > '5' THEN 1
		WHEN i."StrValue" = '5' THEN 0
		ELSE -1
	END >= 0
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	0 >= CASE
		WHEN i."StrValue" > '1' THEN 1
		WHEN i."StrValue" = '1' THEN 0
		ELSE -1
	END
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	i."StrValue"
FROM
	"Isue2424Table" i
WHERE
	CASE
		WHEN i."StrValue" > '1' THEN 1
		WHEN i."StrValue" = '1' THEN 0
		ELSE -1
	END <= 0
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


BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Src"
		(
			"Id"    Int         NOT NULL,
			"Int"   Int             NULL,
			"Enum"  VarChar(5)      NULL,
			"CEnum" VarChar(20)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Src" ("Id", "Int", "Enum", "CEnum") VALUES (1,NULL,NULL,NULL)
	INTO "Src" ("Id", "Int", "Enum", "CEnum") VALUES (2,2,'TWO','___Value2___')
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, -2)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, 2)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" NOT IN (NULL, 2)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" NOT IN (-1, 2)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


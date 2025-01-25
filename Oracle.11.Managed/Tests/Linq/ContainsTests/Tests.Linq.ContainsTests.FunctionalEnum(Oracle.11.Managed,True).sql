BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
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
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "Src" ("Id", "Int", "Enum", "CEnum") VALUES (1,NULL,NULL,NULL)
	INTO "Src" ("Id", "Int", "Enum", "CEnum") VALUES (2,2,'TWO','___Value2___')
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Enum" IN ('THREE', 'FOUR') AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Enum" IN ('THREE') OR s."Enum" IS NULL) AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Enum" IN ('THREE', 'TWO') AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Enum" NOT IN ('TWO') AND s."Enum" IS NOT NULL) AND
	ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Enum" NOT IN ('THREE', 'TWO') OR s."Enum" IS NULL) AND
	ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Src"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


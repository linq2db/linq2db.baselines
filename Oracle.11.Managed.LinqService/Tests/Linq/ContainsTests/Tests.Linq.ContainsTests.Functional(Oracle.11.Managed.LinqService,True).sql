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
			"Enum"  VarChar2(5)     NULL,
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
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Int Int32
SET     @Int = NULL
DECLARE @Enum NVarchar2 -- String
SET     @Enum = NULL
DECLARE @CEnum Varchar2 -- String
SET     @CEnum = NULL

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
VALUES
(
	:Id,
	:Int,
	:Enum,
	:CEnum
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Int Int32
SET     @Int = 2
DECLARE @Enum NVarchar2(3) -- String
SET     @Enum = 'TWO'
DECLARE @CEnum Varchar2(12) -- String
SET     @CEnum = '___Value2___'

INSERT INTO "Src"
(
	"Id",
	"Int",
	"Enum",
	"CEnum"
)
VALUES
(
	:Id,
	:Int,
	:Enum,
	:CEnum
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, -2) AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Int" IN (-1) OR s."Int" IS NULL) AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	s."Int" IN (-1, 2) AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Int" NOT IN (2) AND s."Int" IS NOT NULL) AND ROWNUM <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Int" NOT IN (-1, 2) OR s."Int" IS NULL) AND ROWNUM <= 1

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


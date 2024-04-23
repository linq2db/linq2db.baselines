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
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Int Int32
SET     @Int = NULL
DECLARE @Enum Varchar2 -- String
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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Int Int32
SET     @Int = 2
DECLARE @Enum Varchar2(3) -- String
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
	(s."Int" IN (-1) OR s."Int" IS NULL)
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
	(s."Int" NOT IN (2) AND s."Int" IS NOT NULL)
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	s."Id"
FROM
	"Src" s
WHERE
	(s."Int" NOT IN (-1, 2) OR s."Int" IS NULL)
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


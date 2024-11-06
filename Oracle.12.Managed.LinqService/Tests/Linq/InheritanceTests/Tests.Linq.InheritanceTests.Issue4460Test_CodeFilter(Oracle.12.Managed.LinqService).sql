BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Base"';
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
		CREATE TABLE "Base"
		(
			"Code" VarChar(255)     NULL,
			"Id"   Int          NOT NULL,
			"Name" VarChar(255)     NULL,
			"Age"  Int              NULL
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
DECLARE @Code Varchar2(5) -- String
SET     @Code = 'Child'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Name Varchar2(4) -- String
SET     @Name = 'Jane'

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name"
)
VALUES
(
	:Code,
	:Id,
	:Name
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Code Varchar2(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Age Int32
SET     @Age = 10

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Age"
)
VALUES
(
	:Code,
	:Id,
	:Age
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN e."Code" = 'Child2' THEN 1
		ELSE 0
	END,
	e."Code",
	e."Id",
	e."Age",
	CASE
		WHEN e."Code" = 'Child' THEN 1
		ELSE 0
	END,
	e."Name"
FROM
	"Base" e
WHERE
	e."Code" <> 'Child' OR e."Code" IS NULL

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Base"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


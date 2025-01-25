BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1622Table"';
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
		CREATE TABLE "Issue1622Table"
		(
			"Id"       Int          NOT NULL,
			"SomeText" VarChar(255)     NULL,

			CONSTRAINT "PK_Issue1622Table" PRIMARY KEY ("Id")
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
DECLARE @Id Int32
SET     @Id = 1
DECLARE @SomeText Varchar2(13) -- String
SET     @SomeText = 'Value1_suffix'

INSERT INTO "Issue1622Table"
(
	"Id",
	"SomeText"
)
VALUES
(
	:Id,
	:SomeText
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	e."Id",
	e."SomeText"
FROM
	"Issue1622Table" e
WHERE
	e."SomeText" = 'Value1_suffix'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	e."Id",
	e."SomeText"
FROM
	"Issue1622Table" e
WHERE
	e."Id" = 1
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1622Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


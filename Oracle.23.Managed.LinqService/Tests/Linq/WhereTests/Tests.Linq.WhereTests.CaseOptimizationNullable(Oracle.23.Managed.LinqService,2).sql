BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WhereWithString"';
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
		CREATE TABLE "WhereWithString"
		(
			"Id"          Int          NOT NULL,
			"StringValue" VarChar(255)     NULL,

			CONSTRAINT "PK_WhereWithString" PRIMARY KEY ("Id")
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
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StringValue Varchar2(4) -- String
SET     @StringValue = 'Str1'

INSERT INTO "WhereWithString"
(
	"Id",
	"StringValue"
)
VALUES
(
	:Id,
	:StringValue
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @filterValue Int32
SET     @filterValue = 2

SELECT
	x."Id",
	x."StringValue"
FROM
	"WhereWithString" x
WHERE
	x."Id" = :filterValue

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WhereWithString"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


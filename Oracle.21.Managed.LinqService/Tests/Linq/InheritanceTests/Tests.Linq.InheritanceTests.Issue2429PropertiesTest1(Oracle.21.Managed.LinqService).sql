BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BaseTable"';
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
		CREATE TABLE "BaseTable"
		(
			"Id"    Int NOT NULL,
			"Value" Int NOT NULL,

			CONSTRAINT "PK_BaseTable" PRIMARY KEY ("Id")
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
DECLARE @BaseValue Int32
SET     @BaseValue = 100

INSERT INTO "BaseTable"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:BaseValue
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Value" as "BaseValue"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Value" as "BaseValue"
FROM
	"BaseTable" x
WHERE
	x."Id" = 1 AND x."Value" = 100
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BaseTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


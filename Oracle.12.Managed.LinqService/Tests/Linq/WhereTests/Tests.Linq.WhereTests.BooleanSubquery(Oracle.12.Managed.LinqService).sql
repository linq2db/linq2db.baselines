BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WhereWithBool"';
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
		CREATE TABLE "WhereWithBool"
		(
			"Id"        Int     NOT NULL,
			"BoolValue" Char(1) NOT NULL,

			CONSTRAINT "PK_WhereWithBool" PRIMARY KEY ("Id")
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
DECLARE @Id Int32
SET     @Id = 1
DECLARE @BoolValue Int16
SET     @BoolValue = 1

INSERT INTO "WhereWithBool"
(
	"Id",
	"BoolValue"
)
VALUES
(
	:Id,
	:BoolValue
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."Id",
	t."BoolValue"
FROM
	"WhereWithBool" t,
	"WhereWithBool" x
WHERE
	x."BoolValue" = 1 AND x."Id" = 1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "WhereWithBool"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


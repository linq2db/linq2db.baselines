BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CreateTableTypes"';
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
		CREATE TABLE "CreateTableTypes"
		(
			"Id"      Int     NOT NULL,
			"Boolean" Char(1) NOT NULL
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
DECLARE @Boolean Int16
SET     @Boolean = 0

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Boolean"
)
VALUES
(
	:Id,
	:Boolean
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Boolean Int16
SET     @Boolean = 1

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Boolean"
)
VALUES
(
	:Id,
	:Boolean
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Boolean"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "CreateTableTypes"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


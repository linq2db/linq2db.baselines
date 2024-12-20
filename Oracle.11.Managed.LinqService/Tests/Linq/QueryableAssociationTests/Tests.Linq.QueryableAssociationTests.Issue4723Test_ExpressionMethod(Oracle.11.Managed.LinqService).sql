BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4723Table1"';
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
		CREATE TABLE "Issue4723Table1"
		(
			"Id"               Int          NOT NULL,
			"ExpressionMethod" VarChar(255)     NULL
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
DECLARE @ExpressionMethod Varchar2 -- String
SET     @ExpressionMethod = NULL

INSERT INTO "Issue4723Table1"
(
	"Id",
	"ExpressionMethod"
)
VALUES
(
	:Id,
	:ExpressionMethod
)

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4723Table2"';
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
		CREATE TABLE "Issue4723Table2"
		(
			"Id"    Int          NOT NULL,
			"Value" VarChar(255)     NULL
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
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'Value 1'

INSERT INTO "Issue4723Table2"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'Value 1'

INSERT INTO "Issue4723Table2"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'Value 2'

INSERT INTO "Issue4723Table2"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t2."Id",
	t1."ExpressionMethod"
FROM
	"Issue4723Table1" t2
		LEFT JOIN (
			SELECT
				se."Value" as "ExpressionMethod",
				ROW_NUMBER() OVER (PARTITION BY se."Id" ORDER BY se."Id") as "rn",
				se."Id"
			FROM
				"Issue4723Table2" se
		) t1 ON t1."Id" = t2."Id" AND t1."rn" <= 1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4723Table2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4723Table1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


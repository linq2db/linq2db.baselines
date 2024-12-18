BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ComplexPredicate"';
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
		CREATE TABLE "ComplexPredicate"
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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Varchar2 -- String
SET     @Value = NULL

INSERT INTO "ComplexPredicate"
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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'other'

INSERT INTO "ComplexPredicate"
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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Value Varchar2(3) -- String
SET     @Value = '123'

INSERT INTO "ComplexPredicate"
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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Value Varchar2(4) -- String
SET     @Value = 'test'

INSERT INTO "ComplexPredicate"
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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 5
DECLARE @Value Varchar2(1) -- String
SET     @Value = '1'

INSERT INTO "ComplexPredicate"
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
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value"
FROM
	"ComplexPredicate" r
WHERE
	CASE
		WHEN r."Value" = '123' AND r."Value" IS NOT NULL THEN 1
		ELSE 0
	END = CASE
		WHEN r."Value" = '1' AND r."Value" IS NOT NULL OR r."Value" = 'test' AND r."Value" IS NOT NULL AND (r."Value" <> '1' OR r."Value" IS NULL)
			THEN 1
		ELSE 0
	END
ORDER BY
	r."Id"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value"
FROM
	"ComplexPredicate" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ComplexPredicate"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


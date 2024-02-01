BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "NotNullableBoolClass"';
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
		CREATE TABLE "NotNullableBoolClass"
		(
			"Value" Char(1) NOT NULL
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
DECLARE @Value Int16
SET     @Value = 1

INSERT INTO "NotNullableBoolClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Value Int16
SET     @Value = 0

INSERT INTO "NotNullableBoolClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = 1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = 1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = 0

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = 0

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = 0

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = 1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "NotNullableBoolClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


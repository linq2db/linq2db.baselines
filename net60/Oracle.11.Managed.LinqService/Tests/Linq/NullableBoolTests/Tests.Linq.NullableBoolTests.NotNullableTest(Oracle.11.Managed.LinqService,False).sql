BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "NotNullableBoolClass"';
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
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = 1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = 0

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = 0

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = 0

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t."Value"
FROM
	"NotNullableBoolClass" t
WHERE
	t."Value" = 1

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "NotNullableBoolClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


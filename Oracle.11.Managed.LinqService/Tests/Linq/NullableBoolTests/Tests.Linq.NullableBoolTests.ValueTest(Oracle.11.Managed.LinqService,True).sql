BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "NullableBoolClass"';
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
		CREATE TABLE "NullableBoolClass"
		(
			"Value" Char(1)     NULL
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
SET     @Value = NULL

INSERT INTO "NullableBoolClass"
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
SET     @Value = 1

INSERT INTO "NullableBoolClass"
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

INSERT INTO "NullableBoolClass"
(
	"Value"
)
VALUES
(
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value OR t."Value" IS NULL

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "NullableBoolClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


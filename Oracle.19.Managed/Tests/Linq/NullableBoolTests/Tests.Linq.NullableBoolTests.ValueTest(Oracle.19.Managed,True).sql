BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "NullableBoolClass"';
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
-- Oracle.19.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "NullableBoolClass" ("Value") VALUES (NULL)
	INTO "NullableBoolClass" ("Value") VALUES (1)
	INTO "NullableBoolClass" ("Value") VALUES (0)
SELECT * FROM dual

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = :value

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value OR t."Value" IS NULL

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @value Int16
SET     @value = 1

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" <> :value

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "NullableBoolClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


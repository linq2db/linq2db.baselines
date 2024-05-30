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

INSERT ALL
	INTO "NotNullableBoolClass" ("Value") VALUES (1)
	INTO "NotNullableBoolClass" ("Value") VALUES (0)
SELECT * FROM dual

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


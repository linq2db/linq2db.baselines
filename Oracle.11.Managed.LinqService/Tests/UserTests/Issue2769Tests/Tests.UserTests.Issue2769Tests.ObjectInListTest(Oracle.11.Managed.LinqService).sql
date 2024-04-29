BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
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
		CREATE TABLE "SampleClass"
		(
			"Id"        Int NOT NULL,
			"NullValue" Int     NULL
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

SELECT
	a."Id",
	a."NullValue"
FROM
	"SampleClass" a
WHERE
	(a."Id" = 0 AND (a."NullValue" = 0 AND a."NullValue" IS NOT NULL OR a."NullValue" IS NULL) OR a."Id" = 1 AND a."NullValue" = 1 AND a."NullValue" IS NOT NULL OR a."Id" = 2 AND a."NullValue" = 2 AND a."NullValue" IS NOT NULL)

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


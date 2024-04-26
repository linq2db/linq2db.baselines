BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4167Table"';
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
		CREATE TABLE "Issue4167Table"
		(
			ID          Int          NOT NULL,
			"Value"     VarChar(255)     NULL,
			"EnumValue" Int              NULL,

			CONSTRAINT "PK_Issue4167Table" PRIMARY KEY (ID)
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
	INTO "Issue4167Table" (ID, "Value", "EnumValue") VALUES (1,'000001',0)
	INTO "Issue4167Table" (ID, "Value", "EnumValue") VALUES (2,'000001',3)
	INTO "Issue4167Table" (ID, "Value", "EnumValue") VALUES (3,'000001',NULL)
	INTO "Issue4167Table" (ID, "Value", "EnumValue") VALUES (4,'000002',0)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

WITH CTE_1 ("EnumValue")
AS
(
	SELECT
		CASE
			WHEN g_1."EnumValue" IS NOT NULL THEN g_1."EnumValue"
			ELSE 0
		END
	FROM
		"Issue4167Table" g_1
	WHERE
		g_1."Value" = '000001'
	GROUP BY
		g_1."Value",
		g_1."EnumValue"
)
SELECT
	t1."EnumValue"
FROM
	CTE_1 t1
ORDER BY
	t1."EnumValue"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4167Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


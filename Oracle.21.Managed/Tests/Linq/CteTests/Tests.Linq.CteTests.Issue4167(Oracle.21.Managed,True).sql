BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4167Table"';
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
-- Oracle.21.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Issue4167Table" (ID, "Value", "EnumValue") VALUES (1,'000001',0)
	INTO "Issue4167Table" (ID, "Value", "EnumValue") VALUES (2,'000001',3)
	INTO "Issue4167Table" (ID, "Value", "EnumValue") VALUES (3,'000001',NULL)
	INTO "Issue4167Table" (ID, "Value", "EnumValue") VALUES (4,'000002',0)
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @default_1 Int32
SET     @default_1 = 0

WITH CTE_1 ("EnumValue")
AS
(
	SELECT
		Nvl(t."EnumValue", :default_1)
	FROM
		"Issue4167Table" t
	WHERE
		t."Value" = '000001'
	GROUP BY
		t."Value",
		t."EnumValue"
)
SELECT
	r."EnumValue"
FROM
	CTE_1 r
ORDER BY
	r."EnumValue"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4167Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4167Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "Issue4167Table" (ID, "Value", "EnumValue") VALUES (1,'000001',0)
	INTO "Issue4167Table" (ID, "Value", "EnumValue") VALUES (2,'000001',3)
	INTO "Issue4167Table" (ID, "Value", "EnumValue") VALUES (3,'000001',NULL)
	INTO "Issue4167Table" (ID, "Value", "EnumValue") VALUES (4,'000002',0)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."EnumValue"
FROM
	(
		SELECT
			CASE
				WHEN r."EnumValue" IS NOT NULL THEN r."EnumValue"
				ELSE 0
			END as "EnumValue"
		FROM
			"Issue4167Table" r
		WHERE
			r."Value" = '000001' AND r."Value" IS NOT NULL
		GROUP BY
			r."Value",
			r."EnumValue"
	) t1
ORDER BY
	t1."EnumValue"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4167Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


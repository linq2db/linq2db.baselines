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
DECLARE @ID Int32
SET     @ID = 1
DECLARE @Value Varchar2(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Int32
SET     @EnumValue = 0

INSERT INTO "Issue4167Table"
(
	ID,
	"Value",
	"EnumValue"
)
VALUES
(
	:ID,
	:Value,
	:EnumValue
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 2
DECLARE @Value Varchar2(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Int32
SET     @EnumValue = 3

INSERT INTO "Issue4167Table"
(
	ID,
	"Value",
	"EnumValue"
)
VALUES
(
	:ID,
	:Value,
	:EnumValue
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 3
DECLARE @Value Varchar2(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue Int32
SET     @EnumValue = NULL

INSERT INTO "Issue4167Table"
(
	ID,
	"Value",
	"EnumValue"
)
VALUES
(
	:ID,
	:Value,
	:EnumValue
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ID Int32
SET     @ID = 4
DECLARE @Value Varchar2(6) -- String
SET     @Value = '000002'
DECLARE @EnumValue Int32
SET     @EnumValue = 0

INSERT INTO "Issue4167Table"
(
	ID,
	"Value",
	"EnumValue"
)
VALUES
(
	:ID,
	:Value,
	:EnumValue
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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
		g_1."Value" = '000001' AND g_1."Value" IS NOT NULL
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
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue4167Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


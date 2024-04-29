BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Dest1"';
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
		CREATE TABLE "Dest1"
		(
			ID            Int          NOT NULL,
			"Value"       SmallInt         NULL,
			"StringValue" VarChar(255)     NULL
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
DECLARE @id1 Int32
SET     @id1 = 3000
DECLARE @id2 Int32
SET     @id2 = 4000
DECLARE @value Varchar2(3) -- String
SET     @value = 'two'

INSERT ALL
WHEN 1 = 0 THEN
	INTO "Dest1"
	(
		ID,
		"StringValue"
	)
	VALUES
	(
		:id1,
		"source_Value"
	)
WHEN 1 = 1 THEN
	INTO "Dest1"
	(
		ID,
		"StringValue"
	)
	VALUES
	(
		:id2,
		"source_Value"
	)
SELECT
	:value as "source_Value"
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1.ID,
	t1."Value",
	t1."StringValue"
FROM
	"Dest1" t1
WHERE
	t1.ID > 1000 AND ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Dest1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;


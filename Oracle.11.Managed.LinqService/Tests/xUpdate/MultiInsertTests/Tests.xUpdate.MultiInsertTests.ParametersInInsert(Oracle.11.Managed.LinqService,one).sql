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
DECLARE @value Varchar2(3) -- String
SET     @value = 'one'
DECLARE @id2 Int32
SET     @id2 = 4000

INSERT ALL
WHEN "Value_1" IS NULL THEN
	INTO "Dest1"
	(
		ID,
		"StringValue"
	)
	VALUES
	(
		:id1,
		:value
	)
WHEN "Value_1" IS NOT NULL THEN
	INTO "Dest1"
	(
		ID,
		"StringValue"
	)
	VALUES
	(
		:id2,
		:value
	)
SELECT
	:value as "Value_1"
FROM SYS.DUAL

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	t1.ID,
	t1."Value",
	t1."StringValue"
FROM
	"Dest1" t1
WHERE
	t1.ID > 1000 AND ROWNUM <= :take

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


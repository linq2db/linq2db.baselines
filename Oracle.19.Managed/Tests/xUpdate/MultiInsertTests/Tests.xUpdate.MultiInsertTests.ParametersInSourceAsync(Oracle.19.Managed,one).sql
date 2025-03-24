BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @id1 Int32
SET     @id1 = 3000
DECLARE @id2 Int32
SET     @id2 = 4000
DECLARE @value Varchar2(3) -- String
SET     @value = 'one'

INSERT ALL
WHEN "source_Value" IS NULL THEN
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
WHEN "source_Value" IS NOT NULL THEN
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
--  Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1.ID,
	t1."Value" as "Value_1",
	t1."StringValue"
FROM
	"Dest1" t1
WHERE
	t1.ID > 1000
FETCH NEXT 2 ROWS ONLY


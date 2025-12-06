-- Oracle.11.Managed Oracle11
DECLARE @id1 Int32
SET     @id1 = 3000
DECLARE @id2 Int32
SET     @id2 = 4000
DECLARE @value Varchar2(3) -- String
SET     @value = 'two'

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
		"Value_1"
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
		"Value_1"
	)
SELECT
	:value as "Value_1"
FROM SYS.DUAL

-- Oracle.11.Managed Oracle11

SELECT
	t1.ID,
	t1."Value",
	t1."StringValue"
FROM
	"Dest1" t1
WHERE
	t1.ID > 1000 AND ROWNUM <= 2


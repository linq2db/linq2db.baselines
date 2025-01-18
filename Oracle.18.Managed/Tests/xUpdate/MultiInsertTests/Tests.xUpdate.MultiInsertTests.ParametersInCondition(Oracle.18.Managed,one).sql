﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @id1 Int32
SET     @id1 = 3000
DECLARE @id2 Int32
SET     @id2 = 4000
DECLARE @value Varchar2(3) -- String
SET     @value = 'one'

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
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1."Value" as "Value_1",
	t1."StringValue"
FROM
	"Dest1" t1
WHERE
	t1.ID > 1000
FETCH NEXT 2 ROWS ONLY


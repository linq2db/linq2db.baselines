﻿BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @id1 Int32
SET     @id1 = 3000
DECLARE @id2 Int32
SET     @id2 = 4000
DECLARE @value Varchar2 -- String
SET     @value = NULL

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
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	t1.ID,
	t1."Value",
	t1."StringValue"
FROM
	"Dest1" t1
WHERE
	t1.ID > 1000 AND ROWNUM <= 2


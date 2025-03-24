﻿BeforeExecute
--  Oracle.11.Managed Oracle11

MERGE INTO "test_insert_or_replace" t1
USING (SELECT 1 AS "id" FROM SYS.DUAL) s ON
(
	t1."id" = s."id"
)
WHEN NOT MATCHED THEN
	INSERT
	(
		"id",
		"name"
	)
	VALUES
	(
		1,
		'test'
	)

BeforeExecute
--  Oracle.11.Managed Oracle11

MERGE INTO "test_insert_or_replace" t1
USING (SELECT 1 AS "id" FROM SYS.DUAL) s ON
(
	t1."id" = s."id"
)
WHEN NOT MATCHED THEN
	INSERT
	(
		"id",
		"name"
	)
	VALUES
	(
		1,
		'test'
	)


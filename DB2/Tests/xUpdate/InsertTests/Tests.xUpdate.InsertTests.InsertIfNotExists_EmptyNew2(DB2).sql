BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "test_insert_or_replace" "t1"
USING (SELECT 1 AS "id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."id" = "s"."id"
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
-- DB2 DB2.LUW DB2LUW

MERGE INTO "test_insert_or_replace" "t1"
USING (SELECT 1 AS "id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."id" = "s"."id"
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


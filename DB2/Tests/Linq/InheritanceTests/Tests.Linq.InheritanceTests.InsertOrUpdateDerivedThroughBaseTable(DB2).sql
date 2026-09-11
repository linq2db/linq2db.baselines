-- DB2 DB2.LUW DB2LUW
MERGE INTO "InheritanceFilter" "t1"
USING (SELECT 1 AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Child1Field" = 66
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Code",
		"Child1Field"
	)
	VALUES
	(
		1,
		1,
		55
	)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Code",
	"t1"."Child1Field"
FROM
	"InheritanceFilter" "t1"
WHERE
	"t1"."Code" IN (12, 11, 1)
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
MERGE INTO "InheritanceFilter" "t1"
USING (SELECT 1 AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Child1Field" = 66
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Code",
		"Child1Field"
	)
	VALUES
	(
		1,
		1,
		55
	)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Code",
	"t1"."Child1Field"
FROM
	"InheritanceFilter" "t1"
WHERE
	"t1"."Code" IN (12, 11, 1)
FETCH NEXT 2 ROWS ONLY


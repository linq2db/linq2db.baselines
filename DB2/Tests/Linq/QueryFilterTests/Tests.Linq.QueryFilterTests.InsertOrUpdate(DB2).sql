-- DB2 DB2.LUW DB2LUW

MERGE INTO "Issue5289Table" "t1"
USING (SELECT 1 AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"PictureId" = 3
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"PictureId",
		"Deleted"
	)
	VALUES
	(
		1,
		2,
		0
	)

-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."PictureId",
	"r"."Deleted"
FROM
	"Issue5289Table" "r"
WHERE
	NOT "r"."Deleted" AND "r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

MERGE INTO "Issue5289Table" "t1"
USING (SELECT 1 AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"PictureId" = 3
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"PictureId",
		"Deleted"
	)
	VALUES
	(
		1,
		2,
		0
	)

-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."PictureId",
	"r"."Deleted"
FROM
	"Issue5289Table" "r"
WHERE
	NOT "r"."Deleted" AND "r"."Id" = 1
FETCH NEXT 2 ROWS ONLY


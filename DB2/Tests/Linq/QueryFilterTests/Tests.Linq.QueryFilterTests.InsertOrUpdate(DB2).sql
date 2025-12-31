-- DB2 DB2.LUW DB2LUW

MERGE INTO "Issue5289Table" "r"
USING (SELECT 1 AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"r"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"PictureId" = 3
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"PictureId"
	)
	VALUES
	(
		1,
		2
	)

-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."PictureId"
FROM
	"Issue5289Table" "r"
WHERE
	("r"."Deleted" = 0 OR "r"."Deleted" IS NULL) AND "r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- DB2 DB2.LUW DB2LUW

MERGE INTO "Issue5289Table" "r"
USING (SELECT 1 AS "Id" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"r"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"PictureId" = 3
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"PictureId"
	)
	VALUES
	(
		1,
		2
	)

-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."PictureId"
FROM
	"Issue5289Table" "r"
WHERE
	("r"."Deleted" = 0 OR "r"."Deleted" IS NULL) AND "r"."Id" = 1
FETCH NEXT 2 ROWS ONLY


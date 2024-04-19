﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TestFolder"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "TestFolder"
		(
			"Id"       char(16) for bit data NOT NULL,
			"Label"    NVarChar(255)             NULL,
			"ParentId" char(16) for bit data
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

WITH CTE
(
	"Level",
	"Id",
	"ParentId",
	"Label",
	"Entity_Id",
	"Entity_Label",
	"Entity_ParentId"
)
AS
(
	SELECT
		0,
		"c_1"."Id",
		"c_1"."ParentId",
		"c_1"."Label",
		"c_1"."Id",
		"c_1"."Label",
		"c_1"."ParentId"
	FROM
		"TestFolder" "c_1"
	WHERE
		"c_1"."ParentId" IS NULL
	UNION ALL
	SELECT
		"r"."Level" + 1,
		"t1"."Id",
		"t1"."ParentId",
		"r"."Label" || '/' || "t1"."Label",
		"t1"."Id",
		"t1"."Label",
		"t1"."ParentId"
	FROM
		"TestFolder" "t1",
		CTE "r"
	WHERE
		("t1"."ParentId" = "r"."Id" OR "t1"."ParentId" IS NULL AND "r"."Id" IS NULL)
)
SELECT
	"t2"."Level",
	"t2"."Id",
	"t2"."ParentId",
	"t2"."Label",
	"t2"."Entity_Id",
	"t2"."Entity_Label",
	"t2"."Entity_ParentId"
FROM
	CTE "t2"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TestFolder"';
END


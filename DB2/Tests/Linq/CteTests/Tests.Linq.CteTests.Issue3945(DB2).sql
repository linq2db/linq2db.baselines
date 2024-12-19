BeforeExecute
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

INSERT INTO "TestFolder"
(
	"Id",
	"Label"
)
WITH CTE ("ParentId", "Label")
AS
(
	SELECT
		"c_1"."ParentId",
		"c_1"."Label"
	FROM
		"TestFolder" "c_1"
	WHERE
		"c_1"."ParentId" IS NOT NULL
)
SELECT
	BX'3D667BBCDE0F27438F925D8CC3A11D11',
	"parent"."Label" || '/' || "child"."Label"
FROM
	CTE "child"
		INNER JOIN "TestFolder" "parent" ON "child"."ParentId" = "parent"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TestFolder"';
END


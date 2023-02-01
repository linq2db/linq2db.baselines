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
DECLARE @Id VarBinary(16) -- Binary
SET     @Id = BX'9E8936321F8E0C409233A80BAC9E42CB'

INSERT INTO "TestFolder"
(
	"Id",
	"Label"
)
WITH CTE ("Id", "Label", "ParentId")
AS
(
	SELECT
		"c_1"."Id",
		"c_1"."Label",
		"c_1"."ParentId"
	FROM
		"TestFolder" "c_1"
	WHERE
		"c_1"."ParentId" IS NOT NULL
)
SELECT
	@Id,
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


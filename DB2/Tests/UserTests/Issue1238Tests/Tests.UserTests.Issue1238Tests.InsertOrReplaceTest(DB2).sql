BeforeExecute
BeginTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"InheritanceParent" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Key1 Integer(4) -- Int32
SET     @Key1 = 143
DECLARE @Key2 VarChar -- String
SET     @Key2 = NULL
DECLARE @Data Integer(4) -- Int32
SET     @Data = 1

MERGE INTO "InheritanceParent" "t1"
USING (SELECT CAST(@Key1 AS Int) AS "InheritanceParentId", CAST(@Key2 AS NVarChar(255)) AS "Name" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."InheritanceParentId" = "s"."InheritanceParentId" AND
	("t1"."Name" IS NULL AND "s"."Name" IS NULL OR "t1"."Name" = "s"."Name")
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"TypeDiscriminator" = CAST(@Data AS Int)
WHEN NOT MATCHED THEN
	INSERT
	(
		"InheritanceParentId",
		"Name",
		"TypeDiscriminator"
	)
	VALUES
	(
		CAST(@Key1 AS Int),
		CAST(@Key2 AS NVarChar(255)),
		CAST(@Data AS Int)
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Key1 Integer(4) -- Int32
SET     @Key1 = 143
DECLARE @Key2 VarChar -- String
SET     @Key2 = NULL
DECLARE @Data Integer(4) -- Int32
SET     @Data = 1

MERGE INTO "InheritanceParent" "t1"
USING (SELECT CAST(@Key1 AS Int) AS "InheritanceParentId", CAST(@Key2 AS NVarChar(255)) AS "Name" FROM SYSIBM.SYSDUMMY1 FETCH FIRST 1 ROW ONLY) "s" ON
(
	"t1"."InheritanceParentId" = "s"."InheritanceParentId" AND
	("t1"."Name" IS NULL AND "s"."Name" IS NULL OR "t1"."Name" = "s"."Name")
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"TypeDiscriminator" = CAST(@Data AS Int)
WHEN NOT MATCHED THEN
	INSERT
	(
		"InheritanceParentId",
		"Name",
		"TypeDiscriminator"
	)
	VALUES
	(
		CAST(@Key1 AS Int),
		CAST(@Key2 AS NVarChar(255)),
		CAST(@Data AS Int)
	)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
DisposeTransaction

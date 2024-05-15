BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"InheritanceParent" "t1"

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143
DECLARE @Key2 VarChar -- String
SET     @Key2 = NULL
DECLARE @Data Integer -- Int32
SET     @Data = 1

MERGE INTO "InheritanceParent" "t1"
USING (SELECT CAST(@Key1 AS Int) AS "InheritanceParentId", CAST(@Key2 AS VARCHAR(1)) AS "Name" FROM rdb$database) "s" ON
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
		CAST(@Key2 AS VARCHAR(1)),
		CAST(@Data AS Int)
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143
DECLARE @Key2 VarChar -- String
SET     @Key2 = NULL
DECLARE @Data Integer -- Int32
SET     @Data = 1

MERGE INTO "InheritanceParent" "t1"
USING (SELECT CAST(@Key1 AS Int) AS "InheritanceParentId", CAST(@Key2 AS VARCHAR(1)) AS "Name" FROM rdb$database) "s" ON
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
		CAST(@Key2 AS VARCHAR(1)),
		CAST(@Data AS Int)
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
DisposeTransaction

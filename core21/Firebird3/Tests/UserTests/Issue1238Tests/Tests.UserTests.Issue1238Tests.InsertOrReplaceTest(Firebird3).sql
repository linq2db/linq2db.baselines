BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"InheritanceParent" "t1"

BeforeExecute
-- Firebird3 Firebird
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143
DECLARE @Key2 VarChar -- String
SET     @Key2 = NULL
DECLARE @Data_1 Integer -- Int32
SET     @Data_1 = 1

MERGE INTO "InheritanceParent" "t1"
USING (SELECT Cast(@Key1 as Int) AS "InheritanceParentId", Cast(@Key2 as VarChar(255) CHARACTER SET UNICODE_FSS) AS "Name" FROM rdb$database) "s" ON
(
	"t1"."InheritanceParentId" = "s"."InheritanceParentId" AND
	("t1"."Name" IS NULL AND "s"."Name" IS NULL OR "t1"."Name" = "s"."Name")
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."TypeDiscriminator" = @Data_1
WHEN NOT MATCHED THEN
	INSERT
	(
		"InheritanceParentId",
		"Name",
		"TypeDiscriminator"
	)
	VALUES
	(
		Cast(@Key1 as Int),
		Cast(@Key2 as VarChar(255) CHARACTER SET UNICODE_FSS),
		@Data_1
	)

BeforeExecute
-- Firebird3 Firebird

SELECT 
	Count(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
-- Firebird3 Firebird
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143
DECLARE @Key2 VarChar -- String
SET     @Key2 = NULL
DECLARE @Data_1 Integer -- Int32
SET     @Data_1 = 1

MERGE INTO "InheritanceParent" "t1"
USING (SELECT Cast(@Key1 as Int) AS "InheritanceParentId", Cast(@Key2 as VarChar(255) CHARACTER SET UNICODE_FSS) AS "Name" FROM rdb$database) "s" ON
(
	"t1"."InheritanceParentId" = "s"."InheritanceParentId" AND
	("t1"."Name" IS NULL AND "s"."Name" IS NULL OR "t1"."Name" = "s"."Name")
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."TypeDiscriminator" = @Data_1
WHEN NOT MATCHED THEN
	INSERT
	(
		"InheritanceParentId",
		"Name",
		"TypeDiscriminator"
	)
	VALUES
	(
		Cast(@Key1 as Int),
		Cast(@Key2 as VarChar(255) CHARACTER SET UNICODE_FSS),
		@Data_1
	)

BeforeExecute
-- Firebird3 Firebird

SELECT 
	Count(*)
FROM
	"InheritanceParent" "t1"


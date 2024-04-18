﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.4 Firebird4

DELETE FROM
	"InheritanceParent" "t1"

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143
DECLARE @Key2 VarChar -- String
SET     @Key2 = NULL
DECLARE @Data Integer -- Int32
SET     @Data = 1

MERGE INTO "InheritanceParent" "t1"
USING (SELECT Cast(@Key1 as Int) AS "InheritanceParentId", Cast(@Key2 as VarChar(255) CHARACTER SET UNICODE_FSS) AS "Name" FROM rdb$database) "s" ON
(
	"t1"."InheritanceParentId" = "s"."InheritanceParentId" AND
	("t1"."Name" IS NULL AND "s"."Name" IS NULL OR "t1"."Name" = "s"."Name")
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."TypeDiscriminator" = @Data
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
		@Data
	)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Count(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143
DECLARE @Key2 VarChar -- String
SET     @Key2 = NULL
DECLARE @Data Integer -- Int32
SET     @Data = 1

MERGE INTO "InheritanceParent" "t1"
USING (SELECT Cast(@Key1 as Int) AS "InheritanceParentId", Cast(@Key2 as VarChar(255) CHARACTER SET UNICODE_FSS) AS "Name" FROM rdb$database) "s" ON
(
	"t1"."InheritanceParentId" = "s"."InheritanceParentId" AND
	("t1"."Name" IS NULL AND "s"."Name" IS NULL OR "t1"."Name" = "s"."Name")
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."TypeDiscriminator" = @Data
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
		@Data
	)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Count(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
DisposeTransaction

BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.4 Firebird4

DELETE FROM
	"InheritanceParent" "t1"

BeforeExecute
-- Firebird.4 Firebird4

MERGE INTO "InheritanceParent" "t1"
USING (SELECT 143 AS "InheritanceParentId", NULL AS "Name" FROM rdb$database) "s" ON
(
	"t1"."InheritanceParentId" = "s"."InheritanceParentId" AND
	("t1"."Name" IS NULL AND "s"."Name" IS NULL OR "t1"."Name" = "s"."Name")
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"TypeDiscriminator" = 1
WHEN NOT MATCHED THEN
	INSERT
	(
		"InheritanceParentId",
		"Name",
		"TypeDiscriminator"
	)
	VALUES
	(
		143,
		NULL,
		1
	)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
-- Firebird.4 Firebird4

MERGE INTO "InheritanceParent" "t1"
USING (SELECT 143 AS "InheritanceParentId", NULL AS "Name" FROM rdb$database) "s" ON
(
	"t1"."InheritanceParentId" = "s"."InheritanceParentId" AND
	("t1"."Name" IS NULL AND "s"."Name" IS NULL OR "t1"."Name" = "s"."Name")
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"TypeDiscriminator" = 1
WHEN NOT MATCHED THEN
	INSERT
	(
		"InheritanceParentId",
		"Name",
		"TypeDiscriminator"
	)
	VALUES
	(
		143,
		NULL,
		1
	)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
DisposeTransaction

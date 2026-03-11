-- Firebird.2.5 Firebird

DELETE FROM
	"InheritanceParent" "t1"

-- Firebird.2.5 Firebird

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

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

-- Firebird.2.5 Firebird

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

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"


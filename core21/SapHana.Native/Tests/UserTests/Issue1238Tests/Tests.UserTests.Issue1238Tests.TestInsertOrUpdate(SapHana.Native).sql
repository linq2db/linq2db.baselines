BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"InheritanceParent" "t1"

BeforeExecute
-- SapHana.Native SapHana

UPDATE
	"InheritanceParent"
SET
	"InheritanceParent"."TypeDiscriminator" = 1
WHERE
	"InheritanceParent"."InheritanceParentId" = 143 AND
	"InheritanceParent"."Name" IS NULL

BeforeExecute
-- SapHana.Native SapHana

INSERT INTO "InheritanceParent"
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
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
-- SapHana.Native SapHana

UPDATE
	"InheritanceParent"
SET
	"InheritanceParent"."TypeDiscriminator" = 1
WHERE
	"InheritanceParent"."InheritanceParentId" = 143 AND
	"InheritanceParent"."Name" IS NULL

BeforeExecute
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"InheritanceParent" "t1"


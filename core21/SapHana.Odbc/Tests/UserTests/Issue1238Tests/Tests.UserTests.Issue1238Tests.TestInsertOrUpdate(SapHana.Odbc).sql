BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"InheritanceParent" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

UPDATE
	"InheritanceParent"
SET
	"InheritanceParent"."TypeDiscriminator" = 1
WHERE
	"InheritanceParent"."InheritanceParentId" = 143 AND
	"InheritanceParent"."Name" IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

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
-- SapHana.Odbc SapHanaOdbc

UPDATE
	"InheritanceParent"
SET
	"InheritanceParent"."TypeDiscriminator" = 1
WHERE
	"InheritanceParent"."InheritanceParentId" = 143 AND
	"InheritanceParent"."Name" IS NULL


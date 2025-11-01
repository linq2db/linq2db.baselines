-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"InheritanceParent" "t1"

-- SapHana.Odbc SapHanaOdbc

UPDATE
	"InheritanceParent" "t1"
SET
	"TypeDiscriminator" = 1
WHERE
	"t1"."InheritanceParentId" = 143 AND "t1"."Name" IS NULL

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

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

-- SapHana.Odbc SapHanaOdbc

UPDATE
	"InheritanceParent" "t1"
SET
	"TypeDiscriminator" = 1
WHERE
	"t1"."InheritanceParentId" = 143 AND "t1"."Name" IS NULL

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"


-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"InheritanceParent" "t1"

-- SapHana.Odbc SapHanaOdbc

UPSERT "InheritanceParent"
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
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

-- SapHana.Odbc SapHanaOdbc

UPSERT "InheritanceParent"
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
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"


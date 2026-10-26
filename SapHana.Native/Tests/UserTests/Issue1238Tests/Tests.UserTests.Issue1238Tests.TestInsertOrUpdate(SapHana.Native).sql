-- SapHana.Native SapHana
DELETE FROM
	"InheritanceParent" "t1"

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

-- SapHana.Native SapHana
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

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"


-- SapHana.Native SapHana
SELECT
	"a_Parent"."InheritanceParentId"
FROM
	"InheritanceChild" "c_1"
		LEFT JOIN "InheritanceParent" "a_Parent" ON "c_1"."InheritanceParentId" = "a_Parent"."InheritanceParentId" AND "c_1"."TypeDiscriminator" = 1
ORDER BY
	"c_1"."InheritanceChildId"


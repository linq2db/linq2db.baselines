BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"it".ID
FROM
	"DynamicParent" "it"
		LEFT JOIN "DynamicChild" "a_Child" ON "it".ID = "a_Child"."ParentID"
WHERE
	"a_Child".ID = 123


﻿BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"it".ID
FROM
	"DynamicParent" "it"
		INNER JOIN "DynamicChild" "a_Child" ON "it".ID = "a_Child"."ParentID"
WHERE
	"a_Child".ID = 123


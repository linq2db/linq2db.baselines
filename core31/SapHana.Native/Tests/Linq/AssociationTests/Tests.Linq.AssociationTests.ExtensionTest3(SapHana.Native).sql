﻿BeforeExecute
-- SapHana.Native SapHana

SELECT
	"a_Parent"."ParentID"
FROM
	"Child" "_"
		LEFT JOIN "Parent" "a_Parent" ON "_"."ParentID" = "a_Parent"."ParentID"


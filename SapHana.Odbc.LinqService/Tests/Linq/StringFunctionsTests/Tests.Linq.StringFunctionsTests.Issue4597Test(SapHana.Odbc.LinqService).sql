﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	(
		SELECT
			STRING_AGG(CAST("a_Children"."ChildID" AS NVarChar(11)), ', ')
		FROM
			"Child" "a_Children"
		WHERE
			"s"."ParentID" = "a_Children"."ParentID"
	)
FROM
	"Parent" "s"


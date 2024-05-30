﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"o"."ParentID",
	"o"."Value1",
	"c_2"."ParentID",
	"c_2"."ChildID"
FROM
	"Parent" "o"
		INNER JOIN LATERAL (
			SELECT DISTINCT
				"c_1"."ParentID",
				"c_1"."ChildID"
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" = "o"."ParentID"
		) "c_2" ON 1=1


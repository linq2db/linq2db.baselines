﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"g_1"."ParentID"
		FROM
			"Child" "g_1"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"g_1"."ParentID"
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"


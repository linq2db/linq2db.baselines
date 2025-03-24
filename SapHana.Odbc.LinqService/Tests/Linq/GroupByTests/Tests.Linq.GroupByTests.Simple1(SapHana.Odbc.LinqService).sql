﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."Key_1",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID" as "Key_1"
		FROM
			"Child" "t1"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."Key_1" = "d"."ParentID"

BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID"
FROM
	"Child" "t1"
GROUP BY
	"t1"."ParentID"


﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT DISTINCT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
		INNER JOIN "Parent" "u" ON "x"."ParentID" = "u"."ParentID" AND "u"."Value1" > 5
WHERE
	"x"."ChildID" > 30

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT DISTINCT
	"x"."ParentID",
	"x"."ChildID"
FROM
	"Child" "x"
		INNER JOIN "Parent" "u" ON "x"."ParentID" = "u"."ParentID" AND "u"."Value1" > 5
WHERE
	"x"."ChildID" > 30


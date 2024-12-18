﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."ParentID",
	"p"."Value1",
	"c_1"."ParentID",
	"c_1"."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1",
	"p"."ParentID",
	"p"."Value1",
	CASE
		WHEN "a_Parent"."ParentID" IS NOT NULL THEN "a_Parent"."Value1"
		ELSE NULL
	END
FROM
	"Parent" "p"
		INNER JOIN "Child" "c_1" ON "c_1"."ParentID" = "p"."ParentID"
		LEFT JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"
WHERE
	"p"."ParentID" > 0 OR "p"."Value1" > 0 AND "p"."Value1" IS NOT NULL OR
	"a_Parent"."Value1" > 0 AND "a_Parent"."Value1" IS NOT NULL
ORDER BY
	"p"."ParentID",
	"p"."Value1",
	"a_Parent"."Value1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" "t1"
		LEFT JOIN "Parent" "a_Parent" ON "t1"."ParentID" = "a_Parent"."ParentID"


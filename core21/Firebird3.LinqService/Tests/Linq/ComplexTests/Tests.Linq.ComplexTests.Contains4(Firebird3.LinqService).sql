﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	"a_Parent"."ParentID",
	"a_Parent"."Value1",
	"t2"."gc",
	"t2"."ChildID",
	"t2"."GrandChildID"
FROM
	"Child" "ch"
		LEFT JOIN "Parent" "a_Parent" ON "ch"."ParentID" = "a_Parent"."ParentID"
		LEFT JOIN (
			SELECT
				"gc_1"."ParentID" as "gc",
				"gc_1"."ChildID",
				"gc_1"."GrandChildID"
			FROM
				"GrandChild" "gc_1"
					INNER JOIN (
						SELECT
							Max("t1"."GrandChildID") as "c1"
						FROM
							"GrandChild" "t1"
						GROUP BY
							"t1"."ChildID"
					) "max_1" ON ("gc_1"."GrandChildID" IS NULL AND "max_1"."c1" IS NULL OR "gc_1"."GrandChildID" = "max_1"."c1")
		) "t2" ON "a_Parent"."ParentID" = "t2"."gc"
WHERE
	("t2"."gc" IS NULL AND "t2"."ChildID" IS NULL AND "t2"."GrandChildID" IS NULL OR ("t2"."GrandChildID" IS NULL OR "t2"."GrandChildID" NOT IN (111, 222)))


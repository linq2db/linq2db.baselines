BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."ParentID",
	"p"."Value1",
	"a_Child"."ChildID",
	"a_Child_1"."ChildID",
	"a_Child_2"."ChildID",
	"a_Child_3"."ChildID",
	"a_Child_4"."ChildID",
	"a_Child_5"."ChildID",
	"a_Child_6"."ChildID",
	"a_Child_7"."ChildID",
	"a_Child_8"."ChildID",
	"a_Child_9"."ChildID",
	"a_Child_10"."ChildID",
	"a_Child_11"."ChildID",
	"a_Child_12"."ChildID",
	"a_Child_13"."ChildID",
	"a_Child_14"."ChildID",
	"a_Child_15"."ChildID",
	"a_Child_16"."ChildID",
	"a_Child_17"."ChildID",
	"a_Child_18"."ChildID",
	"a_Child_19"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN "GrandChild" "t1" ON "p"."ParentID" = "t1"."ParentID"
		LEFT JOIN "Child" "a_Child" ON "t1"."ParentID" = "a_Child"."ParentID" AND "t1"."ChildID" = "a_Child"."ChildID"
		LEFT JOIN "GrandChild" "t2" ON "p"."ParentID" = "t2"."ParentID"
		LEFT JOIN "Child" "a_Child_1" ON "t2"."ParentID" = "a_Child_1"."ParentID" AND "t2"."ChildID" = "a_Child_1"."ChildID"
		LEFT JOIN "GrandChild" "t3" ON "p"."ParentID" = "t3"."ParentID"
		LEFT JOIN "Child" "a_Child_2" ON "t3"."ParentID" = "a_Child_2"."ParentID" AND "t3"."ChildID" = "a_Child_2"."ChildID"
		LEFT JOIN "GrandChild" "t4" ON "p"."ParentID" = "t4"."ParentID"
		LEFT JOIN "Child" "a_Child_3" ON "t4"."ParentID" = "a_Child_3"."ParentID" AND "t4"."ChildID" = "a_Child_3"."ChildID"
		LEFT JOIN "GrandChild" "t5" ON "p"."ParentID" = "t5"."ParentID"
		LEFT JOIN "Child" "a_Child_4" ON "t5"."ParentID" = "a_Child_4"."ParentID" AND "t5"."ChildID" = "a_Child_4"."ChildID"
		LEFT JOIN "GrandChild" "t6" ON "p"."ParentID" = "t6"."ParentID"
		LEFT JOIN "Child" "a_Child_5" ON "t6"."ParentID" = "a_Child_5"."ParentID" AND "t6"."ChildID" = "a_Child_5"."ChildID"
		LEFT JOIN "GrandChild" "t7" ON "p"."ParentID" = "t7"."ParentID"
		LEFT JOIN "Child" "a_Child_6" ON "t7"."ParentID" = "a_Child_6"."ParentID" AND "t7"."ChildID" = "a_Child_6"."ChildID"
		LEFT JOIN "GrandChild" "t8" ON "p"."ParentID" = "t8"."ParentID"
		LEFT JOIN "Child" "a_Child_7" ON "t8"."ParentID" = "a_Child_7"."ParentID" AND "t8"."ChildID" = "a_Child_7"."ChildID"
		LEFT JOIN "GrandChild" "t9" ON "p"."ParentID" = "t9"."ParentID"
		LEFT JOIN "Child" "a_Child_8" ON "t9"."ParentID" = "a_Child_8"."ParentID" AND "t9"."ChildID" = "a_Child_8"."ChildID"
		LEFT JOIN "GrandChild" "t10" ON "p"."ParentID" = "t10"."ParentID"
		LEFT JOIN "Child" "a_Child_9" ON "t10"."ParentID" = "a_Child_9"."ParentID" AND "t10"."ChildID" = "a_Child_9"."ChildID"
		LEFT JOIN "GrandChild" "t11" ON "p"."ParentID" = "t11"."ParentID"
		LEFT JOIN "Child" "a_Child_10" ON "t11"."ParentID" = "a_Child_10"."ParentID" AND "t11"."ChildID" = "a_Child_10"."ChildID"
		LEFT JOIN "GrandChild" "t12" ON "p"."ParentID" = "t12"."ParentID"
		LEFT JOIN "Child" "a_Child_11" ON "t12"."ParentID" = "a_Child_11"."ParentID" AND "t12"."ChildID" = "a_Child_11"."ChildID"
		LEFT JOIN "GrandChild" "t13" ON "p"."ParentID" = "t13"."ParentID"
		LEFT JOIN "Child" "a_Child_12" ON "t13"."ParentID" = "a_Child_12"."ParentID" AND "t13"."ChildID" = "a_Child_12"."ChildID"
		LEFT JOIN "GrandChild" "t14" ON "p"."ParentID" = "t14"."ParentID"
		LEFT JOIN "Child" "a_Child_13" ON "t14"."ParentID" = "a_Child_13"."ParentID" AND "t14"."ChildID" = "a_Child_13"."ChildID"
		LEFT JOIN "GrandChild" "t15" ON "p"."ParentID" = "t15"."ParentID"
		LEFT JOIN "Child" "a_Child_14" ON "t15"."ParentID" = "a_Child_14"."ParentID" AND "t15"."ChildID" = "a_Child_14"."ChildID"
		LEFT JOIN "GrandChild" "t16" ON "p"."ParentID" = "t16"."ParentID"
		LEFT JOIN "Child" "a_Child_15" ON "t16"."ParentID" = "a_Child_15"."ParentID" AND "t16"."ChildID" = "a_Child_15"."ChildID"
		LEFT JOIN "GrandChild" "t17" ON "p"."ParentID" = "t17"."ParentID"
		LEFT JOIN "Child" "a_Child_16" ON "t17"."ParentID" = "a_Child_16"."ParentID" AND "t17"."ChildID" = "a_Child_16"."ChildID"
		LEFT JOIN "GrandChild" "t18" ON "p"."ParentID" = "t18"."ParentID"
		LEFT JOIN "Child" "a_Child_17" ON "t18"."ParentID" = "a_Child_17"."ParentID" AND "t18"."ChildID" = "a_Child_17"."ChildID"
		LEFT JOIN "GrandChild" "t19" ON "p"."ParentID" = "t19"."ParentID"
		LEFT JOIN "Child" "a_Child_18" ON "t19"."ParentID" = "a_Child_18"."ParentID" AND "t19"."ChildID" = "a_Child_18"."ChildID"
		LEFT JOIN "GrandChild" "t20" ON "p"."ParentID" = "t20"."ParentID"
		LEFT JOIN "Child" "a_Child_19" ON "t20"."ParentID" = "a_Child_19"."ParentID" AND "t20"."ChildID" = "a_Child_19"."ChildID"
WHERE
	"a_Child_19"."ChildID" = 20 AND
	"a_Child_18"."ChildID" = 19 AND
	"a_Child_17"."ChildID" = 18 AND
	"a_Child_16"."ChildID" = 17 AND
	"a_Child_15"."ChildID" = 16 AND
	"a_Child_14"."ChildID" = 15 AND
	"a_Child_13"."ChildID" = 14 AND
	"a_Child_12"."ChildID" = 13 AND
	"a_Child_11"."ChildID" = 12 AND
	"a_Child_10"."ChildID" = 11 AND
	"a_Child_9"."ChildID" = 10 AND
	"a_Child_8"."ChildID" = 9 AND
	"a_Child_7"."ChildID" = 8 AND
	"a_Child_6"."ChildID" = 7 AND
	"a_Child_5"."ChildID" = 6 AND
	"a_Child_4"."ChildID" = 5 AND
	"a_Child_3"."ChildID" = 4 AND
	"a_Child_2"."ChildID" = 3 AND
	"a_Child_1"."ChildID" = 2 AND
	"a_Child"."ChildID" = 1
ORDER BY
	"a_Child"."ChildID",
	"a_Child_1"."ChildID",
	"a_Child_2"."ChildID",
	"a_Child_3"."ChildID",
	"a_Child_4"."ChildID",
	"a_Child_5"."ChildID",
	"a_Child_6"."ChildID",
	"a_Child_7"."ChildID",
	"a_Child_8"."ChildID",
	"a_Child_9"."ChildID",
	"a_Child_10"."ChildID",
	"a_Child_11"."ChildID",
	"a_Child_12"."ChildID",
	"a_Child_13"."ChildID",
	"a_Child_14"."ChildID",
	"a_Child_15"."ChildID",
	"a_Child_16"."ChildID",
	"a_Child_17"."ChildID",
	"a_Child_18"."ChildID",
	"a_Child_19"."ChildID"


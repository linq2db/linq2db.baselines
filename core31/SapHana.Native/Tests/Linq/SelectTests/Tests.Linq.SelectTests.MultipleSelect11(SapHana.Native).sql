BeforeExecute
-- SapHana.Native SapHana

SELECT
	"p"."ParentID",
	"p"."Value1",
	"t2"."c1",
	"t4"."c2",
	"t6"."c3",
	"t8"."c4",
	"t10"."c5",
	"t12"."c6",
	"t14"."c7",
	"t16"."c8",
	"t18"."c9",
	"t20"."c10",
	"t22"."c11",
	"t24"."c12",
	"t26"."c13",
	"t28"."c14",
	"t30"."c15",
	"t32"."c16",
	"t34"."c17",
	"t36"."c18",
	"t38"."c19",
	"t40"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN (
			SELECT
				"a_Child"."ChildID" as "c1",
				"t1"."ParentID"
			FROM
				"GrandChild" "t1"
					LEFT JOIN "Child" "a_Child" ON "t1"."ParentID" = "a_Child"."ParentID" AND "t1"."ChildID" = "a_Child"."ChildID"
		) "t2" ON "p"."ParentID" = "t2"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_1"."ChildID" as "c2",
				"t3"."ParentID"
			FROM
				"GrandChild" "t3"
					LEFT JOIN "Child" "a_Child_1" ON "t3"."ParentID" = "a_Child_1"."ParentID" AND "t3"."ChildID" = "a_Child_1"."ChildID"
		) "t4" ON "p"."ParentID" = "t4"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_2"."ChildID" as "c3",
				"t5"."ParentID"
			FROM
				"GrandChild" "t5"
					LEFT JOIN "Child" "a_Child_2" ON "t5"."ParentID" = "a_Child_2"."ParentID" AND "t5"."ChildID" = "a_Child_2"."ChildID"
		) "t6" ON "p"."ParentID" = "t6"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_3"."ChildID" as "c4",
				"t7"."ParentID"
			FROM
				"GrandChild" "t7"
					LEFT JOIN "Child" "a_Child_3" ON "t7"."ParentID" = "a_Child_3"."ParentID" AND "t7"."ChildID" = "a_Child_3"."ChildID"
		) "t8" ON "p"."ParentID" = "t8"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_4"."ChildID" as "c5",
				"t9"."ParentID"
			FROM
				"GrandChild" "t9"
					LEFT JOIN "Child" "a_Child_4" ON "t9"."ParentID" = "a_Child_4"."ParentID" AND "t9"."ChildID" = "a_Child_4"."ChildID"
		) "t10" ON "p"."ParentID" = "t10"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_5"."ChildID" as "c6",
				"t11"."ParentID"
			FROM
				"GrandChild" "t11"
					LEFT JOIN "Child" "a_Child_5" ON "t11"."ParentID" = "a_Child_5"."ParentID" AND "t11"."ChildID" = "a_Child_5"."ChildID"
		) "t12" ON "p"."ParentID" = "t12"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_6"."ChildID" as "c7",
				"t13"."ParentID"
			FROM
				"GrandChild" "t13"
					LEFT JOIN "Child" "a_Child_6" ON "t13"."ParentID" = "a_Child_6"."ParentID" AND "t13"."ChildID" = "a_Child_6"."ChildID"
		) "t14" ON "p"."ParentID" = "t14"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_7"."ChildID" as "c8",
				"t15"."ParentID"
			FROM
				"GrandChild" "t15"
					LEFT JOIN "Child" "a_Child_7" ON "t15"."ParentID" = "a_Child_7"."ParentID" AND "t15"."ChildID" = "a_Child_7"."ChildID"
		) "t16" ON "p"."ParentID" = "t16"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_8"."ChildID" as "c9",
				"t17"."ParentID"
			FROM
				"GrandChild" "t17"
					LEFT JOIN "Child" "a_Child_8" ON "t17"."ParentID" = "a_Child_8"."ParentID" AND "t17"."ChildID" = "a_Child_8"."ChildID"
		) "t18" ON "p"."ParentID" = "t18"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_9"."ChildID" as "c10",
				"t19"."ParentID"
			FROM
				"GrandChild" "t19"
					LEFT JOIN "Child" "a_Child_9" ON "t19"."ParentID" = "a_Child_9"."ParentID" AND "t19"."ChildID" = "a_Child_9"."ChildID"
		) "t20" ON "p"."ParentID" = "t20"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_10"."ChildID" as "c11",
				"t21"."ParentID"
			FROM
				"GrandChild" "t21"
					LEFT JOIN "Child" "a_Child_10" ON "t21"."ParentID" = "a_Child_10"."ParentID" AND "t21"."ChildID" = "a_Child_10"."ChildID"
		) "t22" ON "p"."ParentID" = "t22"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_11"."ChildID" as "c12",
				"t23"."ParentID"
			FROM
				"GrandChild" "t23"
					LEFT JOIN "Child" "a_Child_11" ON "t23"."ParentID" = "a_Child_11"."ParentID" AND "t23"."ChildID" = "a_Child_11"."ChildID"
		) "t24" ON "p"."ParentID" = "t24"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_12"."ChildID" as "c13",
				"t25"."ParentID"
			FROM
				"GrandChild" "t25"
					LEFT JOIN "Child" "a_Child_12" ON "t25"."ParentID" = "a_Child_12"."ParentID" AND "t25"."ChildID" = "a_Child_12"."ChildID"
		) "t26" ON "p"."ParentID" = "t26"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_13"."ChildID" as "c14",
				"t27"."ParentID"
			FROM
				"GrandChild" "t27"
					LEFT JOIN "Child" "a_Child_13" ON "t27"."ParentID" = "a_Child_13"."ParentID" AND "t27"."ChildID" = "a_Child_13"."ChildID"
		) "t28" ON "p"."ParentID" = "t28"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_14"."ChildID" as "c15",
				"t29"."ParentID"
			FROM
				"GrandChild" "t29"
					LEFT JOIN "Child" "a_Child_14" ON "t29"."ParentID" = "a_Child_14"."ParentID" AND "t29"."ChildID" = "a_Child_14"."ChildID"
		) "t30" ON "p"."ParentID" = "t30"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_15"."ChildID" as "c16",
				"t31"."ParentID"
			FROM
				"GrandChild" "t31"
					LEFT JOIN "Child" "a_Child_15" ON "t31"."ParentID" = "a_Child_15"."ParentID" AND "t31"."ChildID" = "a_Child_15"."ChildID"
		) "t32" ON "p"."ParentID" = "t32"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_16"."ChildID" as "c17",
				"t33"."ParentID"
			FROM
				"GrandChild" "t33"
					LEFT JOIN "Child" "a_Child_16" ON "t33"."ParentID" = "a_Child_16"."ParentID" AND "t33"."ChildID" = "a_Child_16"."ChildID"
		) "t34" ON "p"."ParentID" = "t34"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_17"."ChildID" as "c18",
				"t35"."ParentID"
			FROM
				"GrandChild" "t35"
					LEFT JOIN "Child" "a_Child_17" ON "t35"."ParentID" = "a_Child_17"."ParentID" AND "t35"."ChildID" = "a_Child_17"."ChildID"
		) "t36" ON "p"."ParentID" = "t36"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_18"."ChildID" as "c19",
				"t37"."ParentID"
			FROM
				"GrandChild" "t37"
					LEFT JOIN "Child" "a_Child_18" ON "t37"."ParentID" = "a_Child_18"."ParentID" AND "t37"."ChildID" = "a_Child_18"."ChildID"
		) "t38" ON "p"."ParentID" = "t38"."ParentID"
		LEFT JOIN (
			SELECT
				"a_Child_19"."ChildID",
				"t39"."ParentID"
			FROM
				"GrandChild" "t39"
					LEFT JOIN "Child" "a_Child_19" ON "t39"."ParentID" = "a_Child_19"."ParentID" AND "t39"."ChildID" = "a_Child_19"."ChildID"
		) "t40" ON "p"."ParentID" = "t40"."ParentID"
WHERE
	"t40"."ChildID" = 20 AND
	"t38"."c19" = 19 AND
	"t36"."c18" = 18 AND
	"t34"."c17" = 17 AND
	"t32"."c16" = 16 AND
	"t30"."c15" = 15 AND
	"t28"."c14" = 14 AND
	"t26"."c13" = 13 AND
	"t24"."c12" = 12 AND
	"t22"."c11" = 11 AND
	"t20"."c10" = 10 AND
	"t18"."c9" = 9 AND
	"t16"."c8" = 8 AND
	"t14"."c7" = 7 AND
	"t12"."c6" = 6 AND
	"t10"."c5" = 5 AND
	"t8"."c4" = 4 AND
	"t6"."c3" = 3 AND
	"t4"."c2" = 2 AND
	"t2"."c1" = 1
ORDER BY
	"t2"."c1",
	"t4"."c2",
	"t6"."c3",
	"t8"."c4",
	"t10"."c5",
	"t12"."c6",
	"t14"."c7",
	"t16"."c8",
	"t18"."c9",
	"t20"."c10",
	"t22"."c11",
	"t24"."c12",
	"t26"."c13",
	"t28"."c14",
	"t30"."c15",
	"t32"."c16",
	"t34"."c17",
	"t36"."c18",
	"t38"."c19",
	"t40"."ChildID"


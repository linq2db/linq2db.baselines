BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."ParentID",
	CAST(EXISTS(
		SELECT
			*
		FROM
			"Child" "c_3"
		WHERE
			"c_3"."ParentID" = "t"."ParentID" AND "c_3"."ChildID" > -100
	) AS smallint),
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "c_4"
		WHERE
			"c_4"."ParentID" = "t"."ParentID" AND "c_4"."ChildID" > -100
	),
	"t1"."ParentID",
	"t2"."ParentID",
	"t2"."ChildID"
FROM
	"Parent" "t"
		LEFT JOIN (
			SELECT
				"c_1"."ParentID",
				ROW_NUMBER() OVER (PARTITION BY "c_1"."ParentID" ORDER BY "c_1"."ChildID") as "rn"
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ChildID" > -100 AND "c_1"."ParentID" > 0
		) "t1" ON "t1"."ParentID" = "t"."ParentID" AND "t1"."rn" <= 1
		LEFT JOIN (
			SELECT
				"c_2"."ParentID",
				"c_2"."ChildID",
				ROW_NUMBER() OVER (PARTITION BY "c_2"."ParentID" ORDER BY "c_2"."ChildID") as "rn"
			FROM
				"Child" "c_2"
			WHERE
				"c_2"."ChildID" > -100
		) "t2" ON "t2"."ParentID" = "t"."ParentID" AND "t2"."rn" <= 1
WHERE
	"t"."ParentID" > 0
FETCH NEXT 5000 ROWS ONLY


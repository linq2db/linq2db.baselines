-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN "t2"."ParentID" IS NULL THEN 0
		ELSE "t2"."ParentID"
	END,
	CAST(EXISTS(
		SELECT
			*
		FROM
			"Child" "c_4"
		WHERE
			"c_4"."ParentID" = "t2"."ParentID_1" AND "c_4"."ChildID" > -100
	) AS smallint),
	"t2"."Count_1",
	"t2"."ParentID_2",
	"t2"."ChildID"
FROM
	(
		SELECT
			(
				SELECT
					"c_2"."ParentID"
				FROM
					"Child" "c_2"
				WHERE
					"c_2"."ParentID" = "p"."ParentID" AND "c_2"."ChildID" > -100 AND
					"c_2"."ParentID" > 0
				ORDER BY
					"c_2"."ChildID"
				FETCH NEXT 1 ROWS ONLY
			) as "ParentID",
			"p"."ParentID" as "ParentID_1",
			(
				SELECT
					COUNT(*)
				FROM
					"Child" "c_3"
				WHERE
					"c_3"."ParentID" = "p"."ParentID" AND "c_3"."ChildID" > -100
			) as "Count_1",
			"t1"."ParentID" as "ParentID_2",
			"t1"."ChildID"
		FROM
			"Parent" "p"
				LEFT JOIN (
					SELECT
						"c_1"."ParentID",
						"c_1"."ChildID",
						ROW_NUMBER() OVER (PARTITION BY "c_1"."ParentID" ORDER BY "c_1"."ChildID") as "rn"
					FROM
						"Child" "c_1"
					WHERE
						"c_1"."ChildID" > -100
				) "t1" ON "t1"."ParentID" = "p"."ParentID" AND "t1"."rn" = 1
	) "t2"


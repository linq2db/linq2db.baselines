-- DB2 DB2.LUW DB2LUW

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "ch_1"
		WHERE
			"p"."ParentID" = "ch_1"."ParentID"
	),
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "p"
		INNER JOIN (
			SELECT
				"ch"."ParentID",
				"ch"."ChildID",
				ROW_NUMBER() OVER (PARTITION BY "ch"."ParentID" ORDER BY "ch"."ParentID") as "rn"
			FROM
				"Child" "ch"
		) "t1" ON "p"."ParentID" = "t1"."ParentID" AND "t1"."rn" <= 1
WHERE
	"p"."ParentID" = 1


-- DB2 DB2.LUW DB2LUW
SELECT
	"c_1"."ChildID",
	CAST(Coalesce("c_1"."ChildID", 0) BETWEEN 0 AND 100 AS smallint),
	CAST(Coalesce("c_1"."ChildID", 0) NOT BETWEEN 0 AND 100 AS smallint),
	CASE
		WHEN "c_1"."ChildID" BETWEEN 0 AND 100 THEN 1
		ELSE 0
	END
FROM
	"Parent" "p"
		LEFT JOIN "Child" "c_1" ON "p"."ParentID" = "c_1"."ParentID"
WHERE
	"p"."ParentID" = 5
FETCH NEXT 2 ROWS ONLY


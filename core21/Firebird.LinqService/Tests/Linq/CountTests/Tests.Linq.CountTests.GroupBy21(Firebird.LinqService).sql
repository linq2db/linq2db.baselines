BeforeExecute
-- Firebird
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			( 
				SELECT 
					"ch"."ParentID" + 1 as "ParentID", 
					"ch"."ChildID"
				FROM
					"Child" "ch"
			) "ch_1"
		WHERE
			"ch_1"."ParentID" < 3 AND ("ch_3"."ParentID" = "ch_1"."ParentID" AND "ch_3"."ChildID" = "ch_1"."ChildID") AND
			"ch_1"."ParentID" + 1 > @n
	)
FROM
	( 
		SELECT 
			"ch_2"."ParentID" + 1 as "ParentID", 
			"ch_2"."ChildID"
		FROM
			"Child" "ch_2"
	) "ch_3"
WHERE
	"ch_3"."ParentID" + 1 > @n
GROUP BY
	"ch_3"."ParentID",
	"ch_3"."ChildID"


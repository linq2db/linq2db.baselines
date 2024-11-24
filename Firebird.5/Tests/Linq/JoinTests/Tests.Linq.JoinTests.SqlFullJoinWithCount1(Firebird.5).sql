BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN COUNT("t1"."ParentID") = COUNT("right_1"."ParentID") AND COUNT("t1"."ParentID") = COUNT(*)
			THEN TRUE
		ELSE FALSE
	END
FROM
	"Parent" "t1"
		FULL JOIN "Parent" "right_1" ON "right_1"."ParentID" = "t1"."ParentID"
FETCH NEXT 2 ROWS ONLY


BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."c1"
FROM
	(
		SELECT
			CASE
				WHEN COUNT("left_1"."ParentID") = COUNT("right_1"."ParentID") AND COUNT("left_1"."ParentID") = COUNT(*)
					THEN TRUE
				ELSE FALSE
			END as "c1"
		FROM
			"Parent" "left_1"
				FULL JOIN "Parent" "right_1" ON "right_1"."ParentID" = "left_1"."ParentID"
	) "t1"
FETCH NEXT 2 ROWS ONLY


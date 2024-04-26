BeforeExecute
-- Firebird.4 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 1

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
			(
				SELECT
					"p"."ParentID"
				FROM
					"Parent" "p"
				WHERE
					"p"."ParentID" <> @id
			) "left_1"
				FULL JOIN "Parent" "right_1" ON "right_1"."ParentID" = "left_1"."ParentID"
	) "t1"
FETCH NEXT 2 ROWS ONLY


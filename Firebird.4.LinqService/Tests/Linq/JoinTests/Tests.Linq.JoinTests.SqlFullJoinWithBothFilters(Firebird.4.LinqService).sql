BeforeExecute
-- Firebird.4 Firebird4
DECLARE @id1 Integer -- Int32
SET     @id1 = 1
DECLARE @id2 Integer -- Int32
SET     @id2 = 2

SELECT
	"t1"."ParentID",
	"right_2"."ParentID"
FROM
	(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" <> @id1
	) "t1"
		FULL JOIN (
			SELECT
				"right_1"."ParentID",
				"right_1"."ParentID" as "ParentID_1"
			FROM
				"Parent" "right_1"
			WHERE
				"right_1"."ParentID" <> @id2
		) "right_2" ON "right_2"."ParentID_1" = "t1"."ParentID"
ORDER BY
	"t1"."ParentID"


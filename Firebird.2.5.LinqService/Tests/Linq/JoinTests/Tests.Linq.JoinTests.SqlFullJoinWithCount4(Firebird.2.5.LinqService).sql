﻿BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id1 Integer -- Int32
SET     @id1 = 1
DECLARE @id2 Integer -- Int32
SET     @id2 = 2

SELECT FIRST 2
	CASE
		WHEN COUNT("t1"."ParentID") = COUNT("right_2"."ParentID") AND COUNT("t1"."ParentID") = COUNT(*)
			THEN '1'
		ELSE '0'
	END
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
				"right_1"."ParentID"
			FROM
				"Parent" "right_1"
			WHERE
				"right_1"."ParentID" <> @id2
		) "right_2" ON "right_2"."ParentID" = "t1"."ParentID"


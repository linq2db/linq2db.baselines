﻿BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 5000

SELECT
	"t"."ParentID",
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"Child" "c_2"
			WHERE
				"c_2"."ParentID" = "t"."ParentID" AND "c_2"."ChildID" > -100
		)
			THEN TRUE
		ELSE FALSE
	END,
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "c_3"
		WHERE
			"c_3"."ParentID" = "t"."ParentID" AND "c_3"."ChildID" > -100
	),
	(
		SELECT
			"c_4"."ParentID"
		FROM
			"Child" "c_4"
		WHERE
			"c_4"."ParentID" = "t"."ParentID" AND "c_4"."ChildID" > -100 AND
			"c_4"."ParentID" > 0
		ORDER BY
			"c_4"."ChildID"
		FETCH NEXT 1 ROWS ONLY
	),
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "t"
		LEFT JOIN (
			SELECT
				"c_1"."ParentID",
				"c_1"."ChildID",
				ROW_NUMBER() OVER (PARTITION BY "c_1"."ParentID" ORDER BY "c_1"."ChildID") as "rn"
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ChildID" > -100
		) "t1" ON "t1"."ParentID" = "t"."ParentID" AND "t1"."rn" <= 1
WHERE
	"t"."ParentID" > 0
FETCH NEXT @take ROWS ONLY


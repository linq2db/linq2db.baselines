﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN "t1"."ParentID_1" IS NULL THEN 0
		ELSE "t1"."ParentID_1"
	END,
	(
		SELECT
			"c_2"."ParentID"
		FROM
			"Child" "c_2"
		WHERE
			"c_2"."ChildID" > -100
		ORDER BY
			"c_2"."ParentID"
		FETCH NEXT 1 ROWS ONLY
	),
	(
		SELECT
			"c_3"."ChildID"
		FROM
			"Child" "c_3"
		WHERE
			"c_3"."ChildID" > -100
		ORDER BY
			"c_3"."ParentID"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	(
		SELECT
			"p"."ParentID",
			(
				SELECT
					"c_1"."ParentID"
				FROM
					"Child" "c_1"
				WHERE
					"c_1"."ParentID" > 0
				ORDER BY
					"c_1"."ParentID"
				FETCH NEXT 1 ROWS ONLY
			) as "ParentID_1"
		FROM
			"Parent" "p"
	) "t1"
ORDER BY
	"t1"."ParentID"


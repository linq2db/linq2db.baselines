BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN "left_1"."ParentID" IS NOT NULL THEN "left_1"."ParentID"
		ELSE NULL
	END,
	"right_1"."ParentID"
FROM
	"Parent" "left_1"
		RIGHT JOIN "Parent" "right_1"
			INNER JOIN "Parent" "right2" ON "right_1"."Value1" = "right2"."Value1" + 2
		ON ("right_1"."Value1" + 2 = "left_1"."Value1" OR "right_1"."Value1" + 2 IS NULL AND "left_1"."Value1" IS NULL)
ORDER BY
	CASE
		WHEN "left_1"."ParentID" IS NOT NULL THEN "left_1"."ParentID"
		ELSE NULL
	END


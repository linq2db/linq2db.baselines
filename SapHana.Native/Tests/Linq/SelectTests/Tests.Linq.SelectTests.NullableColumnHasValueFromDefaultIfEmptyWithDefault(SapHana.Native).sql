-- SapHana.Native SapHana
SELECT
	"p"."ParentID",
	CASE
		WHEN "p2"."ParentID" IS NOT NULL THEN "p2"."Value1"
		ELSE 5
	END,
	CASE
		WHEN CASE
			WHEN "p2"."ParentID" IS NOT NULL THEN "p2"."Value1"
			ELSE 5
		END IS NOT NULL
			THEN CASE
			WHEN "p2"."ParentID" IS NOT NULL THEN "p2"."Value1"
			ELSE 5
		END
		ELSE -1
	END
FROM
	"Parent" "p"
		LEFT JOIN "Parent" "p2" ON "p2"."ParentID" = "p"."ParentID" + 100

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"Parent" "t1"


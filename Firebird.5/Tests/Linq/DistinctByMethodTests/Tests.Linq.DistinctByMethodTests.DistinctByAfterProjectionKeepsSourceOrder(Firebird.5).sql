-- Firebird.5 Firebird4
SELECT
	"x"."Value1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e"."Value1" ORDER BY "e"."ParentID" DESC) as "RowNumber",
			"e"."Value1",
			"e"."ParentID"
		FROM
			"Parent" "e"
	) "x"
WHERE
	"x"."RowNumber" = 1
ORDER BY
	"x"."ParentID" DESC


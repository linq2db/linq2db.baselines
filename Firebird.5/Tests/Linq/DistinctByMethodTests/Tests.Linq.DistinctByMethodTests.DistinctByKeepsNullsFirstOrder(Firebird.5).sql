-- Firebird.5 Firebird4
SELECT
	"p"."Value1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY Mod("e"."ParentID", 2) ORDER BY "e"."Value1") as "RowNumber",
			"e"."Value1"
		FROM
			"Parent" "e"
	) "p"
WHERE
	"p"."RowNumber" = 1
ORDER BY
	"p"."Value1"


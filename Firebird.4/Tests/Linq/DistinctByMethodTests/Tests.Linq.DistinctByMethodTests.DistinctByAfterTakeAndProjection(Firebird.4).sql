-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 7

SELECT
	"t1"."RowNumber_2",
	"t1"."RowNumber_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY "e"."RowNumber" ORDER BY "e"."RowNumber_1" DESC) as "RowNumber",
			"e"."RowNumber" as "RowNumber_1",
			"e"."RowNumber_1" as "RowNumber_2"
		FROM
			(
				SELECT
					"p"."Value1" as "RowNumber",
					"p"."ParentID" as "RowNumber_1"
				FROM
					"Parent" "p"
				ORDER BY
					"p"."ParentID" DESC
				FETCH NEXT @take ROWS ONLY
			) "e"
	) "t1"
WHERE
	"t1"."RowNumber" = 1
ORDER BY
	"t1"."RowNumber_2" DESC

-- Firebird.4 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"


BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	"g_2"."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			CAST(LOCALTIMESTAMP AS Date) as "Key_1"
		FROM
			"Parent" "g_1"
				INNER JOIN "Child" "s" ON "g_1"."ParentID" = "s"."ParentID"
		WHERE
			"g_1"."Value1" > 0
	) "g_2"
GROUP BY
	"g_2"."Key_1"
FETCH NEXT @take ROWS ONLY


BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 100

SELECT FIRST @take
	"t1"."sort_1",
	"t1"."sort_1"
FROM
	(
		SELECT
			"r"."PersonID" as "sort_1"
		FROM
			"Person" "r"
		GROUP BY
			"r"."PersonID",
			"r"."PersonID"
	) "t1"
ORDER BY
	"t1"."sort_1"


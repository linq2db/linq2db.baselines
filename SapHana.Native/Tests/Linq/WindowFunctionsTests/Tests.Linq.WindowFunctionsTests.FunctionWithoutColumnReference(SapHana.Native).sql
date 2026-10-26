-- SapHana.Native SapHana
DECLARE @rowCount Integer -- Int32
SET     @rowCount = 9
DECLARE @p Integer -- Int32
SET     @p = 10

SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	SUM(1) OVER (),
	ROW_NUMBER() OVER (),
	CASE
		WHEN COUNT(*) OVER () = :"rowCount" AND SUM("t"."IntValue") OVER () > 0
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN COUNT(*) OVER () = :"p" AND SUM("t"."IntValue") OVER () > 0
			THEN 1
		ELSE 0
	END
FROM
	"WindowFunctionTestEntity" "t"


-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @rowCount Int32
SET     @rowCount = 9
DECLARE @p Int32
SET     @p = 10

SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	SUM(1) OVER (),
	CASE
		WHEN COUNT(*) OVER () = :rowCount AND SUM(t."IntValue") OVER () > 0
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN COUNT(*) OVER () = :p AND SUM(t."IntValue") OVER () > 0
			THEN 1
		ELSE 0
	END
FROM
	"WindowFunctionTestEntity" t


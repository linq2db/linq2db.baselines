-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @rowCount Int32
SET     @rowCount = 9
DECLARE @p Int32
SET     @p = 10

SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	SUM(1) OVER (),
	ROW_NUMBER() OVER (ORDER BY (
		SELECT
			1
		FROM SYS.DUAL
	)),
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


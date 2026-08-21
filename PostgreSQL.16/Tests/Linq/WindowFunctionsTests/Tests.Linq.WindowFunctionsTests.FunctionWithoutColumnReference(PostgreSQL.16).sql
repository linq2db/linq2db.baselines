-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @rowCount Integer -- Int32
SET     @rowCount = 9
DECLARE @p Integer -- Int32
SET     @p = 10

SELECT
	COUNT(*) OVER (),
	COUNT(1) OVER (),
	SUM(1) OVER (),
	COUNT(*) OVER () = :rowCount AND SUM(t."IntValue") OVER () > 0,
	COUNT(*) OVER () = :p AND SUM(t."IntValue") OVER () > 0
FROM
	"WindowFunctionTestEntity" t


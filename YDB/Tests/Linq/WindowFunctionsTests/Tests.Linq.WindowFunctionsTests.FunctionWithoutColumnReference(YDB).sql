-- YDB Ydb
DECLARE $rowCount Int32
SET     $rowCount = 9
DECLARE $p Int32
SET     $p = 10

SELECT
	COUNT(*) OVER () as c1,
	COUNT(1) OVER () as c2,
	SUM(1) OVER () as c3,
	ROW_NUMBER() OVER () as c4,
	COUNT(*) OVER () = $rowCount AND SUM(t.IntValue) OVER () > 0 as c5,
	COUNT(*) OVER () = $p AND SUM(t.IntValue) OVER () > 0 as c6
FROM
	WindowFunctionTestEntity t


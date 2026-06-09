-- YDB Ydb
DECLARE $code Int32
SET     $code = 1
DECLARE $site Int32
SET     $site = 2
DECLARE $Ids0_1 Int16
SET     $Ids0_1 = 11s
DECLARE $Ids0_2 Int16
SET     $Ids0_2 = 18s
DECLARE $Ids0_3 Int16
SET     $Ids0_3 = 19s
DECLARE $Ids0_4 Int16
SET     $Ids0_4 = 20s
DECLARE $Ids0_5 Int16
SET     $Ids0_5 = 21s
DECLARE $Ids0_6 Int16
SET     $Ids0_6 = 22s
DECLARE $Ids0_7 Int16
SET     $Ids0_7 = 23s
DECLARE $Ids0_8 Int16
SET     $Ids0_8 = 24s
DECLARE $Ids0_9 Int16
SET     $Ids0_9 = 26s
DECLARE $Ids0_10 Int16
SET     $Ids0_10 = 29s
DECLARE $Ids0_11 Int16
SET     $Ids0_11 = 28s

SELECT
	CAST(f.StringValue AS Int16) as StatusPhase
FROM
	LinqDataTypes x
		INNER JOIN LinqDataTypes o ON x.IntValue = o.IntValue
		INNER JOIN LinqDataTypes u ON o.IntValue = u.IntValue
		INNER JOIN LinqDataTypes r ON u.IntValue = r.IntValue
		INNER JOIN LinqDataTypes f ON r.IntValue = f.IntValue
WHERE
	x.BoolValue = false AND
	x.IntValue = $code AND
	x.IntValue = $site AND
	o.BoolValue = false AND
	u.BoolValue = false AND
	r.BoolValue = false AND
	CAST(f.StringValue AS Int16) NOT IN ($Ids0_1, $Ids0_2, $Ids0_3, $Ids0_4, $Ids0_5, $Ids0_6, $Ids0_7, $Ids0_8, $Ids0_9, $Ids0_10, $Ids0_11)


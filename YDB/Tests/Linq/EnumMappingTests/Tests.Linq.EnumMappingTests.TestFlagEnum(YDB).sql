-- YDB Ydb
SELECT
	t.ID as ID,
	t.IntValue as IntValue
FROM
	TestTable5 t
WHERE
	BitCast((BitCast(t.IntValue AS Uint32) & BitCast(1 AS Uint32)) AS Int32) <> 0


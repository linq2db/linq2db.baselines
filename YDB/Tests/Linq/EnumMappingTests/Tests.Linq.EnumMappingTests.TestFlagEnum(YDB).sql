-- YDB Ydb

SELECT
	t.ID as ID,
	t.IntValue as IntValue
FROM
	TestTable5 t
WHERE
	(Unwrap(CAST(t.IntValue AS Uint32)) & Unwrap(CAST(1 AS Uint32))) <> 0


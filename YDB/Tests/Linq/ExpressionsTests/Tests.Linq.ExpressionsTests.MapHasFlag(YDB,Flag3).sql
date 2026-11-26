-- YDB Ydb
DECLARE flag Int32
SET     flag = 4

SELECT
	t.Id as Id,
	t.`Value` as Value_1,
	t.Flags as Flags
FROM
	MappingTestClass t
WHERE
	BitCast((BitCast(t.Flags AS Uint32) & BitCast($flag AS Uint32)) AS Int32) = $flag


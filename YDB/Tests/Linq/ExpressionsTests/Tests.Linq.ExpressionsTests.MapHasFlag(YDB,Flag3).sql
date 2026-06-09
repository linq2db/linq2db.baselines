-- YDB Ydb
DECLARE $flag Int32
SET     $flag = 4

SELECT
	t.Id as Id,
	t.`Value` as Value_1,
	t.Flags as Flags
FROM
	MappingTestClass t
WHERE
	(Unwrap(CAST(t.Flags AS Uint32)) & Unwrap(CAST($flag AS Uint32))) = $flag


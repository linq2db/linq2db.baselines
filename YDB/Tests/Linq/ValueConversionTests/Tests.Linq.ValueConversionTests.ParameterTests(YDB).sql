-- YDB Ydb
DECLARE $testedList Text(20) -- String
SET     $testedList = '[{"Value":"Value1"}]'u

SELECT
	t.Id as Id,
	t.Value1 as Value1,
	t.Value2 as Value2
FROM
	ValueConversion t
WHERE
	$testedList = t.Value2


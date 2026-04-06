-- DuckDB
DECLARE $testedList NVarChar(20) -- String
SET     $testedList = '[{"Value":"Value1"}]'

SELECT
	t.Id,
	t.Value1,
	t.Value2
FROM
	ValueConversion t
WHERE
	CAST($testedList AS VARCHAR) = t.Value2


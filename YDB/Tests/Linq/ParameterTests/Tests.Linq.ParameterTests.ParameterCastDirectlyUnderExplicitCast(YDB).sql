-- YDB Ydb
DECLARE $name Text(4) -- String
SET     $name = 'john'u

SELECT
	t.Id as Id,
	t.`Value` as Value_1,
	t.Money as Money
FROM
	ParameterCastUnderCastTable t
WHERE
	t.`Value` = CAST(CAST(Unicode::GetLength($name) AS Int32) AS Text)

-- YDB Ydb
DECLARE $name Text(4) -- String
SET     $name = 'john'u

SELECT
	t.Id as Id,
	t.`Value` as Value_1,
	t.Money as Money
FROM
	ParameterCastUnderCastTable t
WHERE
	t.Money = CAST(CAST(Unicode::GetLength($name) AS Int32) AS Decimal(22,9))


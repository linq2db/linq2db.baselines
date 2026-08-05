-- YDB Ydb
DECLARE $iteration Int32
SET     $iteration = 2
DECLARE $Value1 Text(2) -- String
SET     $Value1 = '[]'u
DECLARE $Enum Text(6) -- String
SET     $Enum = 'Value1'u
DECLARE $inserted Text(22) -- String
SET     $inserted = '[{"Value":"inserted"}]'u
DECLARE $boolValue Text(1) -- AnsiString
SET     $boolValue = 'Y'u
DECLARE $boolValue_1 Text(1) -- AnsiString
SET     $boolValue_1 = 'T'u

INSERT INTO ValueConversion
(
	Id,
	Value1,
	`Enum`,
	Value2,
	BoolValue,
	AnotherBoolValue
)
VALUES
(
	$iteration,
	$Value1,
	$Enum,
	$inserted,
	$boolValue,
	$boolValue_1
)

-- YDB Ydb
DECLARE $iteration Int32
SET     $iteration = 2

SELECT
	e.Id as Id,
	e.Value1 as Value1,
	e.Value2 as Value2,
	e.`Enum` as `Enum`,
	e.EnumNullable as EnumNullable,
	e.EnumWithNull as EnumWithNull,
	e.EnumWithNullDeclarative as EnumWithNullDeclarative,
	e.BoolValue as BoolValue,
	e.AnotherBoolValue as AnotherBoolValue,
	e.DateTimeNullable as DateTimeNullable
FROM
	ValueConversion e
WHERE
	e.Id = $iteration
LIMIT 2


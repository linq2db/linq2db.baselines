-- YDB Ydb
DECLARE $testedList Text(20) -- String
SET     $testedList = '[{"Value":"Value1"}]'u

SELECT
	m_1.Id as Key_1,
	m_1.Id as Id,
	m_1.Value1 as Value1,
	m_1.Value2 as Value2,
	m_1.`Enum` as `Enum`,
	m_1.EnumNullable as EnumNullable,
	m_1.EnumWithNull as EnumWithNull,
	m_1.EnumWithNullDeclarative as EnumWithNullDeclarative,
	m_1.BoolValue as BoolValue,
	m_1.AnotherBoolValue as AnotherBoolValue,
	m_1.DateTimeNullable as DateTimeNullable
FROM
	ValueConversion m_1
WHERE
	$testedList = m_1.Value2

-- YDB Ydb
DECLARE $testedList Text(20) -- String
SET     $testedList = '[{"Value":"Value1"}]'u

SELECT
	g_1.Id as Key_1
FROM
	ValueConversion g_1
WHERE
	$testedList = g_1.Value2


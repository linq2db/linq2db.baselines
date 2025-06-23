BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	m_1.Id,
	m_1.Id,
	m_1.Value1,
	m_1.Value2,
	m_1.Enum,
	m_1.EnumNullable,
	m_1.EnumWithNull,
	m_1.EnumWithNullDeclarative,
	m_1.BoolValue,
	m_1.AnotherBoolValue,
	m_1.DateTimeNullable
FROM
	ValueConversion m_1
WHERE
	'[{"Value":"Value1"}]' = m_1.Value2

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	g_1.Id
FROM
	ValueConversion g_1
WHERE
	'[{"Value":"Value1"}]' = g_1.Value2
GROUP BY
	g_1.Id


﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @testedList NVarChar(200) -- String
SET     @testedList = N'[{"Value":"Value1"}]'

SELECT
	[m_1].[Id],
	[m_1].[Id],
	[m_1].[Value1],
	[m_1].[Value2],
	[m_1].[Enum],
	[m_1].[EnumNullable],
	[m_1].[EnumWithNull],
	[m_1].[EnumWithNullDeclarative],
	[m_1].[BoolValue],
	[m_1].[AnotherBoolValue],
	[m_1].[DateTimeNullable]
FROM
	[ValueConversion] [m_1]
WHERE
	@testedList = [m_1].[Value2] AND @testedList = [m_1].[Value2]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @testedList NVarChar(200) -- String
SET     @testedList = N'[{"Value":"Value1"}]'

SELECT
	[g_1].[Id]
FROM
	[ValueConversion] [g_1]
WHERE
	@testedList = [g_1].[Value2]
GROUP BY
	[g_1].[Id]


﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @testedList NVarChar(200) -- String
SET     @testedList = N'[{"Value":"Value1"}]'

SELECT
	[t].[Id],
	[t].[Value1],
	[t].[Value2],
	[t].[Enum],
	[t].[EnumNullable],
	[t].[EnumWithNull],
	[t].[EnumWithNullDeclarative],
	[t].[BoolValue],
	[t].[AnotherBoolValue],
	[t].[DateTimeNullable]
FROM
	[ValueConversion] [t]
WHERE
	[t].[Value2] = @testedList


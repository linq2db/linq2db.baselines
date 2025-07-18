﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t2].[Converted1],
	[t2].[Converted2],
	[t2].[Converted1]
FROM
	(
		SELECT
			Coalesce([t1].[EnumNullable], [t1].[Enum]) as [Converted1],
			[t1].[Value1] as [Converted2]
		FROM
			[ValueConversion] [t1]
	) [t2]
UNION
SELECT
	Coalesce([t1_1].[EnumNullable], [t1_1].[Enum]),
	[t1_1].[Value1],
	Coalesce([t1_1].[EnumNullable], [t1_1].[Enum])
FROM
	[ValueConversion] [t1_1]


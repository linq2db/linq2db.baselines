﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	ISNULL([t].[Value2], '')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	ISNULL([t].[Value3], '')
FROM
	[SampleClass] [t]
ORDER BY
	[t].[Id]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	CONCAT_WS(N' -> ', [t].[Value3], [t].[Value1], [t].[Value2])
FROM
	[SampleClass] [t]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	CONCAT_WS(N' -> ', [t].[Value3], [t].[Value3])
FROM
	[SampleClass] [t]


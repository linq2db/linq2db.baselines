﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[ComplexPredicate] [r]
WHERE
	IIF([r].[Value] = N'123' AND [r].[Value] IS NOT NULL, 1, 0) = IIF([r].[Value] = N'1' AND [r].[Value] IS NOT NULL OR [r].[Value] = N'test' AND [r].[Value] IS NOT NULL AND ([r].[Value] <> N'1' OR [r].[Value] IS NULL), 1, 0)
ORDER BY
	[r].[Id]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ComplexPredicate] [t1]


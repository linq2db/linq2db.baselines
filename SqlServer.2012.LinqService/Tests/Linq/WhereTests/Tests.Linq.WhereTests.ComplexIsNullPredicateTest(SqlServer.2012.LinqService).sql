﻿BeforeExecute
--  SqlServer.2012

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[ComplexPredicate] [r]
WHERE
	IIF([r].[Value] = N'123', 1, 0) = IIF([r].[Value] = N'1' OR [r].[Value] = N'test' AND ([r].[Value] <> N'1' OR [r].[Value] IS NULL), 1, 0)
ORDER BY
	[r].[Id]

BeforeExecute
--  SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ComplexPredicate] [t1]


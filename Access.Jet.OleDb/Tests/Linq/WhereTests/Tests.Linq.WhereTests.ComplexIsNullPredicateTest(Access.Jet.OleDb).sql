﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[r].[Id],
	[r].[Value]
FROM
	[ComplexPredicate] [r]
WHERE
	IIF([r].[Value] = '123', True, False) = IIF([r].[Value] = '1' OR [r].[Value] = 'test' AND ([r].[Value] <> '1' OR [r].[Value] IS NULL), True, False) OR
	([r].[Value] = '123') IS NULL AND ([r].[Value] = '1' OR [r].[Value] = 'test' AND ([r].[Value] <> '1' OR [r].[Value] IS NULL)) IS NULL
ORDER BY
	[r].[Id]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[ComplexPredicate] [t1]


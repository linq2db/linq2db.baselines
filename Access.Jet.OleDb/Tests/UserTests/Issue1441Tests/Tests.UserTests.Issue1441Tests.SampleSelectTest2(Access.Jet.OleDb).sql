﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[author].[Id],
	[author].[Name]
FROM
	[Authors] [author]
		INNER JOIN [Books] [book] ON ([book].[AuthorId] = [author].[Id])


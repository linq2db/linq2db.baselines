BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[d].[DisTypeID]
FROM
	([DisTable] [d]
		INNER JOIN [DisTypeTable] [a_DisType] ON (IIF([d].[DisTypeID] = 1, 1, IIF([d].[DisTypeID] = 2, 2, IIF([d].[DisTypeID] = 4, 4, IIF([d].[DisTypeID] = 5, 5, NULL)))) = [a_DisType].[DisTypeID]))
		INNER JOIN [JurTable] [j] ON ([a_DisType].[JurCode] = [j].[JurCode])


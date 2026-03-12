-- SqlServer.SA.MS SqlServer.2019

SELECT
	[d].[DisTypeID]
FROM
	[DisTable] [d]
		INNER JOIN [DisTypeTable] [a_DisType] ON CASE
			WHEN [d].[DisTypeID] = 1 THEN 1
			WHEN [d].[DisTypeID] = 2 THEN 2
			WHEN [d].[DisTypeID] = 4 THEN 4
			WHEN [d].[DisTypeID] = 5 THEN 5
		END = [a_DisType].[DisTypeID]
		INNER JOIN [JurTable] [j] ON [a_DisType].[JurCode] = [j].[JurCode]


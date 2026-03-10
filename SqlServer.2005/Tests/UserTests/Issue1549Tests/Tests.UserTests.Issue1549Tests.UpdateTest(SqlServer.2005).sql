-- SqlServer.2005

UPDATE
	[tr]
SET
	[tr].[DevReadingTypeId] = [drt].[Id],
	[tr].[Responsibility] = [drt].[Responsibility]
FROM
	[billing_TempReading] [tr]
		INNER JOIN [billing_DevReadingType] [drt] ON [drt].[Name] = [tr].[ReadingTypeName] AND [drt].[DevTypeId] = [tr].[Devtypeid]

-- SqlServer.2005

UPDATE
	[t3]
SET
	[t3].[DevReadingTypeId] = [t1].[Id],
	[t3].[Responsibility] = [t2].[Responsibility]
FROM
	[billing_TempReading] [t3]
		OUTER APPLY (
			SELECT TOP (1)
				[w].[Id]
			FROM
				[billing_DevReadingType] [w]
			WHERE
				[w].[Name] = [t3].[ReadingTypeName] AND [w].[DevTypeId] = [t3].[Devtypeid]
		) [t1]
		OUTER APPLY (
			SELECT TOP (1)
				[w_1].[Responsibility]
			FROM
				[billing_DevReadingType] [w_1]
			WHERE
				[w_1].[Name] = [t3].[ReadingTypeName] AND [w_1].[DevTypeId] = [t3].[Devtypeid]
		) [t2]


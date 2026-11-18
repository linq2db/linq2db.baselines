-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[billing_TempReading] [tr]
		INNER JOIN [billing_DevReadingType] [drt] ON ([drt].[Name] = [tr].[ReadingTypeName] AND [drt].[DevTypeId] = [tr].[Devtypeid])
SET
	[tr].[DevReadingTypeId] = [drt].[Id],
	[tr].[Responsibility] = [drt].[Responsibility]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[billing_TempReading] [t1]
SET
	[t1].[DevReadingTypeId] = (
		SELECT TOP 1
			[w].[Id]
		FROM
			[billing_DevReadingType] [w]
		WHERE
			[w].[Name] = [t1].[ReadingTypeName] AND [w].[DevTypeId] = [t1].[Devtypeid]
	),
	[t1].[Responsibility] = (
		SELECT TOP 1
			[w_1].[Responsibility]
		FROM
			[billing_DevReadingType] [w_1]
		WHERE
			[w_1].[Name] = [t1].[ReadingTypeName] AND [w_1].[DevTypeId] = [t1].[Devtypeid]
	)


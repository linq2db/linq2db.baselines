BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

UPDATE
	[tr]
SET
	[tr].[DevReadingTypeId] = [drt].[Id],
	[tr].[Responsibility] = [drt].[Responsibility]
FROM
	[billing_TempReading] [tr]
		INNER JOIN [billing_DevReadingType] [drt] ON [drt].[Name] = [tr].[ReadingTypeName] AND [drt].[DevTypeId] = [tr].[Devtypeid]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

UPDATE
	[billing_TempReading]
SET
	[DevReadingTypeId] = (
		SELECT TOP (1)
			[w].[Id]
		FROM
			[billing_DevReadingType] [w]
		WHERE
			[w].[Name] = [billing_TempReading].[ReadingTypeName] AND
			[w].[DevTypeId] = [billing_TempReading].[Devtypeid]
	),
	[Responsibility] = (
		SELECT TOP (1)
			[w_1].[Responsibility]
		FROM
			[billing_DevReadingType] [w_1]
		WHERE
			[w_1].[Name] = [billing_TempReading].[ReadingTypeName] AND
			[w_1].[DevTypeId] = [billing_TempReading].[Devtypeid]
	)


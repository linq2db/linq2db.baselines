BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @offset Int -- Int32
SET     @offset = -1

UPDATE
	[Issue4963Table]
SET
	[Field] = CAST(CAST([Issue4963Table].[Field] AS Int) + @offset AS TinyInt)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT TOP (2)
	[t1].[Id],
	[t1].[Field]
FROM
	[Issue4963Table] [t1]


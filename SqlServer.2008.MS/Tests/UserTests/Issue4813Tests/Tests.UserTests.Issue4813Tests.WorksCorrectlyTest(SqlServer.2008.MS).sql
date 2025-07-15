BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[r].[Id],
	[r].[OriginalSaleId],
	(
		SELECT TOP (1)
			[x].[Id]
		FROM
			[Sales] [x]
		WHERE
			[x].[Id] = [r].[OriginalSaleId]
	),
	[r].[ReshipSaleId],
	(
		SELECT TOP (1)
			[x_1].[Id]
		FROM
			[Sales] [x_1]
		WHERE
			[x_1].[Id] = [r].[ReshipSaleId]
	)
FROM
	[Returns] [r]
WHERE
	[r].[ReshipSaleId] IS NULL


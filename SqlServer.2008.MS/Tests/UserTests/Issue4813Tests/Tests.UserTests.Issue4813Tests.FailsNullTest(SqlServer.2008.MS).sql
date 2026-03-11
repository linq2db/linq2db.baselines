-- SqlServer.2008.MS SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[r].[Id],
	[r].[ReshipSaleId],
	[t1].[ReshipSale],
	[t1].[ReshipSale_1],
	[r].[OriginalSaleId],
	[t2].[OriginalSale],
	[t2].[OriginalSale_1]
FROM
	[Returns] [r]
		OUTER APPLY (
			SELECT TOP (1)
				N'Id' as [ReshipSale],
				[x].[Id] as [ReshipSale_1]
			FROM
				[Sales] [x]
			WHERE
				[x].[Id] = [r].[ReshipSaleId]
		) [t1]
		OUTER APPLY (
			SELECT TOP (1)
				N'Id' as [OriginalSale],
				[x_1].[Id] as [OriginalSale_1]
			FROM
				[Sales] [x_1]
			WHERE
				[x_1].[Id] = [r].[OriginalSaleId]
		) [t2]
WHERE
	[r].[ReshipSaleId] IS NULL


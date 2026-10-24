-- SqlServer.2012.MS SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[r].[Id],
	[r].[OriginalSaleId],
	[t1].[OriginalSale],
	[t1].[OriginalSale_1],
	[r].[ReshipSaleId],
	[t2].[ReshipSale],
	[t2].[ReshipSale_1]
FROM
	[Returns] [r]
		OUTER APPLY (
			SELECT TOP (1)
				N'Id' as [OriginalSale],
				[x].[Id] as [OriginalSale_1]
			FROM
				[Sales] [x]
			WHERE
				[x].[Id] = [r].[OriginalSaleId]
		) [t1]
		OUTER APPLY (
			SELECT TOP (1)
				N'Id' as [ReshipSale],
				[x_1].[Id] as [ReshipSale_1]
			FROM
				[Sales] [x_1]
			WHERE
				[x_1].[Id] = [r].[ReshipSaleId]
		) [t2]
WHERE
	[r].[ReshipSaleId] IS NULL


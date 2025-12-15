-- SqlServer.Contained SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[r].[Id],
	[r].[ReshipSaleId],
	[t1].[cond],
	[t1].[ReshipSale],
	[r].[OriginalSaleId],
	[t2].[cond],
	[t2].[OriginalSale]
FROM
	[Returns] [r]
		OUTER APPLY (
			SELECT TOP (1)
				N'Id' as [cond],
				[x].[Id] as [ReshipSale]
			FROM
				[Sales] [x]
			WHERE
				[x].[Id] = [r].[ReshipSaleId]
		) [t1]
		OUTER APPLY (
			SELECT TOP (1)
				N'Id' as [cond],
				[x_1].[Id] as [OriginalSale]
			FROM
				[Sales] [x_1]
			WHERE
				[x_1].[Id] = [r].[OriginalSaleId]
		) [t2]
WHERE
	[r].[ReshipSaleId] IS NULL


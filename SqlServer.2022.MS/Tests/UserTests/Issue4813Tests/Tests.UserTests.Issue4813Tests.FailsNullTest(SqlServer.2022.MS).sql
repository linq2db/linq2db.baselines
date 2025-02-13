BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[r].[Id],
	[r].[ReshipSaleId],
	[t1].[cond],
	[t1].[Id],
	[r].[OriginalSaleId],
	[t2].[cond],
	[t2].[Id]
FROM
	[Returns] [r]
		OUTER APPLY (
			SELECT TOP (1)
				N'Id' as [cond],
				[x].[Id]
			FROM
				[Sales] [x]
			WHERE
				[x].[Id] = [r].[ReshipSaleId]
		) [t1]
		OUTER APPLY (
			SELECT TOP (1)
				N'Id' as [cond],
				[x_1].[Id]
			FROM
				[Sales] [x_1]
			WHERE
				[x_1].[Id] = [r].[OriginalSaleId]
		) [t2]
WHERE
	[r].[ReshipSaleId] IS NULL


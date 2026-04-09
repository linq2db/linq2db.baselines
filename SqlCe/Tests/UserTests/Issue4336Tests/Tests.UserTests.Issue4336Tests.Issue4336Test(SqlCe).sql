-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 10

SELECT TOP (@take)
	[r].[Id] as [OrderPeriodId],
	[pop].[ProductId],
	[vpc].[CategoryId],
	COALESCE([pcc].[PeriodOrderLimit],0) as [MaxCapacity],
	COALESCE(COALESCE([vsp].[Quantity],0),0) as [Quantity],
	COALESCE([pcc].[PeriodOrderLimit],0) - COALESCE(COALESCE([vsp].[Quantity],0),0) as [FreeCapacity],
	COALESCE([vpcc].[PeriodOrderLimit],0) as [MaxCapacity_1],
	[vsopc].[Quantity] as [Quantity_1],
	COALESCE([vpcc].[PeriodOrderLimit],0) - [vsopc].[Quantity] as [FreeCapacity_1]
FROM
	[OrderPeriod] [r]
		INNER JOIN [ProductsPerOrderPeriod] [pop] ON [r].[Id] = [pop].[OrderPeriodId]
		LEFT JOIN [Product] [vpc] ON [vpc].[Id] = [pop].[ProductId]
		LEFT JOIN [ProductCategory] [pcc] ON [pcc].[Id] = [vpc].[CategoryId]
		LEFT JOIN (
			SELECT
				[agroup].[Id],
				[oi].[ProductId],
				SUM(COALESCE([oi].[Quantity],0)) as [Quantity]
			FROM
				[OrderPeriod] [agroup]
					LEFT JOIN [OrderHeader] [oh] ON [agroup].[Id] = [oh].[PeriodId]
					LEFT JOIN [OrderItem] [oi] ON [oh].[Id] = [oi].[OrderHeaderId]
			GROUP BY
				[agroup].[Id],
				[oi].[ProductId]
		) [vsp] ON [vsp].[Id] = [r].[Id] AND [vsp].[ProductId] = [pop].[ProductId]
		LEFT JOIN [OrderPeriod] [v2]
			INNER JOIN [ProductCategory] [vpcc] ON 1=1
		ON [v2].[Id] = [r].[Id] AND [vpcc].[Id] = [vpc].[CategoryId]
		LEFT JOIN (
			SELECT
				[agroup_1].[Id],
				[p].[CategoryId],
				SUM([oi_1].[Quantity]) as [Quantity]
			FROM
				[OrderPeriod] [agroup_1]
					LEFT JOIN [OrderHeader] [oh_1] ON [agroup_1].[Id] = [oh_1].[PeriodId]
					LEFT JOIN [OrderItem] [oi_1] ON [oh_1].[Id] = [oi_1].[OrderHeaderId]
					LEFT JOIN [Product] [p] ON [p].[Id] = [oi_1].[ProductId]
			GROUP BY
				[agroup_1].[Id],
				[p].[CategoryId]
		) [vsopc] ON [vsopc].[Id] = [v2].[Id] AND ([vsopc].[CategoryId] = [vpcc].[Id] OR [vsopc].[CategoryId] IS NULL AND [vpcc].[Id] IS NULL)


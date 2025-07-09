BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 10

SELECT TOP (@take)
	[r].[OrderPeriodId],
	[r].[ProductId],
	[r].[CategoryId],
	[r].[MaxCapacity],
	[r].[Quantity],
	[r].[MaxCapacity] - [r].[Quantity],
	[v2_1].[MaxCapacity],
	[v2_1].[Quantity],
	[v2_1].[FreeCapacity]
FROM
	(
		SELECT
			[op].[Id] as [OrderPeriodId],
			[vpc].[CategoryId],
			[pop].[ProductId],
			COALESCE([pcc].[PeriodOrderLimit],0) as [MaxCapacity],
			COALESCE([vsp_1].[Quantity],0) as [Quantity]
		FROM
			[OrderPeriod] [op]
				INNER JOIN [ProductsPerOrderPeriod] [pop] ON [op].[Id] = [pop].[OrderPeriodId]
				LEFT JOIN [Product] [vpc] ON [vpc].[Id] = [pop].[ProductId]
				LEFT JOIN [ProductCategory] [pcc] ON [pcc].[Id] = [vpc].[CategoryId]
				LEFT JOIN (
					SELECT
						[vsp].[Id],
						[vsp].[ProductId],
						COALESCE([vsp].[SUM_1],0) as [Quantity]
					FROM
						(
							SELECT
								[agroup].[Id],
								[oi].[ProductId],
								SUM(COALESCE([oi].[Quantity],0)) as [SUM_1]
							FROM
								[OrderPeriod] [agroup]
									LEFT JOIN [OrderHeader] [oh] ON [agroup].[Id] = [oh].[PeriodId]
									LEFT JOIN [OrderItem] [oi] ON [oh].[Id] = [oi].[OrderHeaderId]
							GROUP BY
								[agroup].[Id],
								[oi].[ProductId]
						) [vsp]
				) [vsp_1] ON [vsp_1].[Id] = [op].[Id] AND [vsp_1].[ProductId] = [pop].[ProductId]
	) [r]
		LEFT JOIN (
			SELECT
				COALESCE([vpcc].[PeriodOrderLimit],0) as [MaxCapacity],
				[vsopc].[Quantity],
				COALESCE([vpcc].[PeriodOrderLimit],0) - [vsopc].[Quantity] as [FreeCapacity],
				[v2].[Id],
				[vpcc].[Id] as [Id_1]
			FROM
				[OrderPeriod] [v2]
					CROSS JOIN [ProductCategory] [vpcc]
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
					) [vsopc] ON [vsopc].[Id] = [v2].[Id] AND [vsopc].[CategoryId] = [vpcc].[Id]
		) [v2_1] ON [v2_1].[Id] = [r].[OrderPeriodId] AND [v2_1].[Id_1] = [r].[CategoryId]


-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[TesteeId]
FROM
	(
		SELECT
			MIN([elements_1].[TesteeId]) as [TesteeId]
		FROM
			(
				SELECT DISTINCT
					[elements].[Token] as [Key_1],
					[elements].[TesteeId],
					[elements].[TestId],
					[elements].[StructureId],
					[elements].[SoleId],
					[elements].[Distance],
					[elements].[Placement]
				FROM
					[Coverage] [elements]
						INNER JOIN [Test] [test_1] ON [elements].[TestId] = [test_1].[Id]
						LEFT JOIN [Executant] [executant_1] ON [test_1].[Id] = [executant_1].[TestId]
						LEFT JOIN [Testee] [testee_1] ON [elements].[TesteeId] = [testee_1].[Id]
						LEFT JOIN [Outfit] [outfit_1] ON [testee_1].[WorkblankId] = [outfit_1].[WorkblankId]
				WHERE
					[elements].[Status] = 14650
			) [elements_1]
		GROUP BY
			[elements_1].[Key_1]
	) [t1]


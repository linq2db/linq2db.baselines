-- Access.Jet.OleDb AccessOleDb
SELECT
	[m_1].[ProductId],
	[m_1].[Id],
	[m_1].[Id_1],
	[d_2].[Id] as [Id_2],
	[d_2].[SystemId],
	[d_2].[ProductId] as [ProductId_1]
FROM
	(
		SELECT DISTINCT
			[d_1].[ProductId],
			[t2].[Id],
			[t2].[Id_1]
		FROM
			(
				SELECT DISTINCT
					[a_Product].[Id],
					[t1].[Id] as [Id_1]
				FROM
					((
						SELECT DISTINCT
							[s].[Id]
						FROM
							(
								SELECT
									[a].[SystemId],
									[o].[Id],
									[a].[OrganisationId]
								FROM
									[ClashOrg] [o],
									[ClashOrgSystem] [a]
							) [cross_1]
								INNER JOIN [ClashSystem] [s] ON ([cross_1].[SystemId] = [s].[Id])
						WHERE
							[cross_1].[Id] = 5 AND [cross_1].[OrganisationId] = [cross_1].[Id]
					) [t1]
						INNER JOIN [ClashStage] [d] ON ([t1].[Id] = [d].[SystemId]))
						LEFT JOIN [ClashProduct] [a_Product] ON ([d].[ProductId] = [a_Product].[Id])
			) [t2]
				INNER JOIN [ClashProductOrg] [d_1] ON ([t2].[Id] = [d_1].[ProductId])
	) [m_1]
		INNER JOIN [ClashStage] [d_2] ON ([m_1].[ProductId] = [d_2].[ProductId])

-- Access.Jet.OleDb AccessOleDb
SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[Id] as [Id_2],
	[d_1].[ProductId],
	[d_1].[OrganisationId]
FROM
	(
		SELECT DISTINCT
			[a_Product].[Id],
			[t1].[Id] as [Id_1]
		FROM
			((
				SELECT DISTINCT
					[s].[Id]
				FROM
					(
						SELECT
							[a].[SystemId],
							[o].[Id],
							[a].[OrganisationId]
						FROM
							[ClashOrg] [o],
							[ClashOrgSystem] [a]
					) [cross_1]
						INNER JOIN [ClashSystem] [s] ON ([cross_1].[SystemId] = [s].[Id])
				WHERE
					[cross_1].[Id] = 5 AND [cross_1].[OrganisationId] = [cross_1].[Id]
			) [t1]
				INNER JOIN [ClashStage] [d] ON ([t1].[Id] = [d].[SystemId]))
				LEFT JOIN [ClashProduct] [a_Product] ON ([d].[ProductId] = [a_Product].[Id])
	) [m_1]
		INNER JOIN [ClashProductOrg] [d_1] ON ([m_1].[Id] = [d_1].[ProductId])

-- Access.Jet.OleDb AccessOleDb
SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[SystemId],
	[d].[ProductId],
	[a_Product].[Id] as [Id_2]
FROM
	((
		SELECT DISTINCT
			[s].[Id]
		FROM
			(
				SELECT
					[a].[SystemId],
					[o].[Id],
					[a].[OrganisationId]
				FROM
					[ClashOrg] [o],
					[ClashOrgSystem] [a]
			) [cross_1]
				INNER JOIN [ClashSystem] [s] ON ([cross_1].[SystemId] = [s].[Id])
		WHERE
			[cross_1].[Id] = 5 AND [cross_1].[OrganisationId] = [cross_1].[Id]
	) [m_1]
		INNER JOIN [ClashStage] [d] ON ([m_1].[Id] = [d].[SystemId]))
		LEFT JOIN [ClashProduct] [a_Product] ON ([d].[ProductId] = [a_Product].[Id])

-- Access.Jet.OleDb AccessOleDb
SELECT
	[s].[Id]
FROM
	(
		SELECT
			[a].[SystemId],
			[o].[Id],
			[a].[OrganisationId]
		FROM
			[ClashOrg] [o],
			[ClashOrgSystem] [a]
	) [cross_1]
		INNER JOIN [ClashSystem] [s] ON ([cross_1].[SystemId] = [s].[Id])
WHERE
	[cross_1].[Id] = 5 AND [cross_1].[OrganisationId] = [cross_1].[Id]


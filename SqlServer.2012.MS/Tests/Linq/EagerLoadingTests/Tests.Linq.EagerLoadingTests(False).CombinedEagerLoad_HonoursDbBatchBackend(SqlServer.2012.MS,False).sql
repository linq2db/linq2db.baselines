-- SqlServer.2012.MS SqlServer.2012
SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[MasterId],
	[d].[Name]
FROM
	[MixedMaster] [m_1]
		INNER JOIN [MixedCorrelatedChild] [d] ON [d].[MasterId] = [m_1].[Id]
ORDER BY
	[d].[Id],
	[m_1].[Id]
;
SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[MixedDetachedChild] [t1]
ORDER BY
	[t1].[Id]
;
SELECT
	[m_1].[Id]
FROM
	[MixedMaster] [m_1]
ORDER BY
	[m_1].[Id]


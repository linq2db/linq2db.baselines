BeginTransaction(RepeatableRead)


-- SqlServer.2025 SqlServer.2022

SELECT
	[m_1].[Key_1],
	[d].[CfAllowValue],
	[d].[DateFrom]
FROM
	(
		SELECT TOP (1)
			[p].[AclNameId] as [Key_1]
		FROM
			[Issue4624Items] [p]
		GROUP BY
			[p].[AclNameId]
	) [m_1]
		INNER JOIN [Issue4624Items] [d] ON [m_1].[Key_1] = [d].[AclNameId]
ORDER BY
	[d].[DateFrom]



-- SqlServer.2025 SqlServer.2022

SELECT TOP (1)
	[p].[AclNameId]
FROM
	[Issue4624Items] [p]
GROUP BY
	[p].[AclNameId]



DisposeTransaction



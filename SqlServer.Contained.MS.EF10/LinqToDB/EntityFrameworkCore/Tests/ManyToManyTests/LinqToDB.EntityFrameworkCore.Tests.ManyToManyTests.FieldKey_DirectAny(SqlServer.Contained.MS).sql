SELECT [a].[Name]
FROM [Accounts] AS [a]
WHERE EXISTS (
    SELECT 1
    FROM [MmAccountMmRole] AS [m]
    INNER JOIN [Roles] AS [r] ON [m].[RolesId] = [r].[Id]
    WHERE [a].[account_id_col] = [m].[AccountsAccountId] AND [r].[Name] = N'Admin')
ORDER BY [a].[Name]


-- SqlServer.2019

SELECT
	[a].[Name]
FROM
	[Accounts] [a]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[MmAccountMmRole] [r]
				INNER JOIN [Roles] [o] ON [o].[Id] = [r].[RolesId]
		WHERE
			[a].[account_id_col] = [r].[AccountsAccountId] AND
			[o].[Name] = N'Admin'
	)
ORDER BY
	[a].[Name]




SELECT [i].[Id]
FROM [Issue5585Customers] AS [i]
WHERE EXISTS (
    SELECT 1
    FROM [Issue5585CustomerShares] AS [i0]
    WHERE [i].[Id] = [i0].[CustomerId] AND EXISTS (
        SELECT 1
        FROM [Issue5585CustomerShareIssue5585User] AS [i1]
        INNER JOIN [Issue5585Users] AS [i2] ON [i1].[UsersId] = [i2].[Id]
        WHERE [i0].[Id] = [i1].[CustomerSharesId] AND [i2].[Email] = N'user@mail.com'))
ORDER BY [i].[Id]


-- SqlServer.2022

SELECT
	[c_1].[Id]
FROM
	[Issue5585Customers] [c_1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Issue5585CustomerShares] [s]
		WHERE
			[c_1].[Id] = [s].[CustomerId] AND EXISTS(
				SELECT
					*
				FROM
					[Issue5585CustomerShareIssue5585User] [u]
						INNER JOIN [Issue5585Users] [o] ON [o].[Id] = [u].[UsersId]
				WHERE
					[s].[Id] = [u].[CustomerSharesId] AND [o].[Email] = N'user@mail.com'
			)
	)
ORDER BY
	[c_1].[Id]




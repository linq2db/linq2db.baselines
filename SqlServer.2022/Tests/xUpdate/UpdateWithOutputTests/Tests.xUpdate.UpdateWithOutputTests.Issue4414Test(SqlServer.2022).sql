-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 3

UPDATE
	[u]
SET
	[u].[Name] = [t1].[c1]
OUTPUT
	INSERTED.[EmployeeId],
	INSERTED.[Name]
FROM
	[Issue4193Person] [u],
	(
		SELECT TOP (@take)
			N'new_name' as [c1],
			[x].[Id]
		FROM
			[Issue4193Person] [x]
		WHERE
			[x].[EmployeeId] = 1
		ORDER BY
			[x].[EmployeeId]
	) [t1]
WHERE
	[u].[Id] = [t1].[Id]


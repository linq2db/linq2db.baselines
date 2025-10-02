BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 3

UPDATE
	[u]
SET
	[u].[Name] = N'new_name'
OUTPUT
	INSERTED.[EmployeeId],
	INSERTED.[Name]
FROM
	[Issue4193Person] [u],
	(
		SELECT TOP (@take)
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


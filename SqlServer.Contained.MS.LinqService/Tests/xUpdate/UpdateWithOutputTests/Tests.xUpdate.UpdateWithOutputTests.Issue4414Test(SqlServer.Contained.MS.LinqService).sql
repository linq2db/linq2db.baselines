﻿BeforeExecute
--  SqlServer.Contained.MS SqlServer.2019
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
			[x].[Name],
			[x].[EmployeeId]
		FROM
			[Issue4193Person] [x]
		WHERE
			[x].[EmployeeId] = 1
		ORDER BY
			[x].[EmployeeId]
	) [t1]
WHERE
	[u].[Name] = [t1].[Name] AND ([u].[EmployeeId] = [t1].[EmployeeId] OR [u].[EmployeeId] IS NULL AND [t1].[EmployeeId] IS NULL)


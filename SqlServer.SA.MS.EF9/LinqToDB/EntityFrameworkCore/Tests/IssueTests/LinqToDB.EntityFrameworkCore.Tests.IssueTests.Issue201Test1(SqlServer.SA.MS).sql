-- SqlServer.2019

SELECT
	COUNT(*)
FROM
	[Parents] [x]
WHERE
	(
		SELECT TOP (1)
			[a_Children].[IsActive]
		FROM
			[Children] [a_Children]
		WHERE
			[x].[Id] = [a_Children].[ParentId]
	) = 0




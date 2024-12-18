--  SqlServer.2017

SELECT
	1
FROM
	[Parents] [ua]
WHERE
	[ua].[ParentId] = 55377 AND [ua].[ParentId] IS NOT NULL AND
	EXISTS(
		SELECT
			*
		FROM
			[Parents] [t1]
	)




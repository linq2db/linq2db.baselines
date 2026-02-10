-- SqlServer.2005.MS SqlServer.2005

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[gr].[ParentID] as [Key_1]
		FROM
			[Child] [gr]
	) [t1]


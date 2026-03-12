-- SqlServer.2008.MS SqlServer.2008

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[gr].[ParentID] as [Key_1]
		FROM
			[Child] [gr]
	) [t1]


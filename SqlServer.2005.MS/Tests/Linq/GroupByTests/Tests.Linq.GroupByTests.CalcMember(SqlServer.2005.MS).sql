BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[groupedData_1].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN [child].[FirstName] = N'John' THEN [child].[FirstName]
				ELSE N'a'
			END as [Key_1]
		FROM
			[Parent] [groupedData]
				CROSS JOIN [Person] [child]
		WHERE
			[child].[PersonID] = [groupedData].[ParentID]
	) [groupedData_1]
GROUP BY
	[groupedData_1].[Key_1]


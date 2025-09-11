BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[groupedData_1].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([child].[FirstName] = N'John', [child].[FirstName], N'a') as [Key_1]
		FROM
			[Parent] [groupedData]
				CROSS JOIN [Person] [child]
		WHERE
			[child].[PersonID] = [groupedData].[ParentID]
	) [groupedData_1]
GROUP BY
	[groupedData_1].[Key_1]


BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[groupedData_1].[c1],
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN [child].[FirstName] = N'John' THEN [child].[FirstName]
				ELSE N'a'
			END as [c1]
		FROM
			[Parent] [groupedData],
			[Person] [child]
		WHERE
			[child].[PersonID] = [groupedData].[ParentID]
	) [groupedData_1]
GROUP BY
	[groupedData_1].[c1]


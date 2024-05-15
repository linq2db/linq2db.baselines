BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[groupedData_1].[c1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([child].[FirstName] = 'John', [child].[FirstName], 'a') as [c1]
		FROM
			[Parent] [groupedData],
			[Person] [child]
		WHERE
			[child].[PersonID] = [groupedData].[ParentID]
	) [groupedData_1]
GROUP BY
	[groupedData_1].[c1]


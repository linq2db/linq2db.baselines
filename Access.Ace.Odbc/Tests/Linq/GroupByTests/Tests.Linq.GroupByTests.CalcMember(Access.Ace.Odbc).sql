-- Access.Ace.Odbc AccessODBC

SELECT
	[groupedData_1].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([child].[FirstName] = 'John', [child].[FirstName], 'a') as [Key_1]
		FROM
			[Parent] [groupedData],
			[Person] [child]
		WHERE
			[child].[PersonID] = [groupedData].[ParentID]
	) [groupedData_1]
GROUP BY
	[groupedData_1].[Key_1]


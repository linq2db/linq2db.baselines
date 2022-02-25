BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[p].[c1]
FROM
	(
		SELECT
			CStr([t].[ID]) as [c1]
		FROM
			[LinqDataTypes] [t]
	) [p]
WHERE
	Len([p].[c1]) > 0


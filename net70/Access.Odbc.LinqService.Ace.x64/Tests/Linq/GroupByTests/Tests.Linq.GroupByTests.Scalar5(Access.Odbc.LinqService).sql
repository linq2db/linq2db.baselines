BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Max([ch].[ParentID])
FROM
	[Child] [ch]
GROUP BY
	[ch].[ParentID]


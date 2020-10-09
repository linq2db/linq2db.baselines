BeforeExecute
-- Access AccessOleDb

SELECT 
	Count(*)
FROM
	[Child] [t1]
GROUP BY
	[t1].[ParentID]
HAVING
	Count(*) > 1


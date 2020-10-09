BeforeExecute
-- Access AccessOleDb (asynchronously)

SELECT 
	Count(*) = 0
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] <= 3


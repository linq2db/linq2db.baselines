BeforeExecute
-- Access AccessOleDb

SELECT
	[p].[ParentID],
	Iif(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[p].[ParentID] = [c_1].[ParentID]
	), True, False)
FROM
	[Parent] [p]


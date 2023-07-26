BeforeExecute
-- Access AccessOleDb

SELECT
	Iif(EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = [p].[ParentID]
	), True, False)
FROM
	[Parent] [p]


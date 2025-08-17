BeforeExecute
-- SqlServer.2012.MS SqlServer.2012 (asynchronously)

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
				OUTER APPLY (
					SELECT TOP (1)
						[c_1].[ParentID],
						[c_1].[ChildID]
					FROM
						[Child] [c_1]
					WHERE
						[c_1].[ParentID] = [p].[ParentID]
				) [t1]
	), 1, 0)


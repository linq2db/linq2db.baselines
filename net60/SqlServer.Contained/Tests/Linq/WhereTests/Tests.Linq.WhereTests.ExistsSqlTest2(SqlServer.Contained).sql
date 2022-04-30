BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.Contained SqlServer.2019

DELETE [p]
FROM
	[Parent] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [t1]
		WHERE
			[p].[ParentID] = [t1].[ParentID]
	)

BeforeExecute
RollbackTransaction

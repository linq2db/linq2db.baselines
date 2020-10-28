BeforeExecute
-- SqlCe

DELETE FROM
	[Parent]
WHERE
	(EXISTS(
		SELECT
			*
		FROM
			[Child] [t1]
		WHERE
			[Parent].[ParentID] = [t1].[ParentID]
	))


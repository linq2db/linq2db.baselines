BeforeExecute
-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] = 1001

BeforeExecute
-- SqlCe

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	1001,
	NULL
)

BeforeExecute
-- SqlCe

DELETE FROM
	[Parent]
WHERE
	[Parent].[Value1] = 1001


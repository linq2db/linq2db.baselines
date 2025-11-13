-- SqlCe

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1001

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1,
	@id
)

-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	COUNT(*) as [Count_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1001

UPDATE
	[Child]
SET
	[ChildID] = [Child].[ChildID] + 2
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
				LEFT JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[c_1].[ChildID] = @id AND
			[a_Parent].[Value1] = 1 AND
			[Child].[ParentID] = [c_1].[ParentID] AND
			[Child].[ChildID] = [c_1].[ChildID]
	)

-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 1003

SELECT
	COUNT(*) as [Count_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @p


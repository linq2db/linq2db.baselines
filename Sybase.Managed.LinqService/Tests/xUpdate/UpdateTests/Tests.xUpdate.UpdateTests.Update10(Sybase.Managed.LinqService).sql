BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
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

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	[Child]
SET
	[ChildID] = [Child].[ChildID] + 1,
	[ParentID] = (
		SELECT
			[p_1].[ParentID]
		FROM
			[Parent] [p_1]
				INNER JOIN [Child] [c_2] ON [p_1].[ParentID] = [c_2].[ParentID]
				INNER JOIN [Parent] [a_Parent_1] ON [c_2].[ParentID] = [a_Parent_1].[ParentID]
		WHERE
			[c_2].[ChildID] = @id AND
			[a_Parent_1].[Value1] = 1 AND
			[Child].[ParentID] = [c_2].[ParentID] AND
			[Child].[ChildID] = [c_2].[ChildID]
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
				INNER JOIN [Child] [c_1] ON [p].[ParentID] = [c_1].[ParentID]
				INNER JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[c_1].[ChildID] = @id AND
			[a_Parent].[Value1] = 1 AND
			[Child].[ParentID] = [c_1].[ParentID] AND
			[Child].[ChildID] = [c_1].[ChildID]
	)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 1002

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @p


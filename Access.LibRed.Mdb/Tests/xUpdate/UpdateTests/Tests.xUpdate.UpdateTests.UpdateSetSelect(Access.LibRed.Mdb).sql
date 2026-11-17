-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[Parent] [p]
		INNER JOIN [Child] [c_1] ON ([p].[ParentID] = [c_1].[ParentID])
SET
	[p].[ParentID] = (
		SELECT
			[c_2].[ParentID]
		FROM
			[Child] [c_2]
		WHERE
			[c_2].[ChildID] = 11
	) + 1000
WHERE
	[p].[ParentID] = 1

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

UPDATE
	[Parent] [t1]
SET
	[t1].[ParentID] = @ParentID
WHERE
	[t1].[ParentID] = 1001


-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @p  -- Int32
SET     @p = -1

SELECT
	COUNT(*)
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = @p


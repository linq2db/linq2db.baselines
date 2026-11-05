-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	1001
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000


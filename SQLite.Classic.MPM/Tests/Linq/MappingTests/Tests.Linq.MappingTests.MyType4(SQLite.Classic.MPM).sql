-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@id,
	1001
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DELETE FROM
	[Parent]
WHERE
	[Parent].[ParentID] >= 1000


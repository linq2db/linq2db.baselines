-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 5

DELETE FROM
	[Issue681Table]
WHERE
	[Issue681Table].[ID] = @ID


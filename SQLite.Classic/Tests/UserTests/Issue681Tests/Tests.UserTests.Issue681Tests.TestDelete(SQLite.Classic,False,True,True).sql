-- SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 5

DELETE FROM
	[main].[Issue681Table]
WHERE
	[main].[Issue681Table].[ID] = @ID


-- SQLite.Classic SQLite
DECLARE @Test  -- Int32
SET     @Test = 2

UPDATE
	[testparams]
SET
	[Test名前] = @Test
WHERE
	[testparams].[Test名前] = 1


BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Test  -- Int32
SET     @Test = 2

UPDATE
	[testparams]
SET
	[TestИмя] = @Test
WHERE
	[testparams].[TestИмя] = 1


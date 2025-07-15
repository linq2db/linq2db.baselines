BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 2

UPDATE
	[testparams]
SET
	[_p] = @p
WHERE
	[testparams].[_p] = 1


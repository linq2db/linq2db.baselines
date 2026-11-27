-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM
	[QualifiedNameTable]
WHERE
	[QualifiedNameTable].[ID] = @ID


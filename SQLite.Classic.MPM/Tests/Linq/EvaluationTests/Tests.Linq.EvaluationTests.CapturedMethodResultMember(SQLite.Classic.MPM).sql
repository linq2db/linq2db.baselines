-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @ID Integer -- Int32
SET     @ID = 5

INSERT INTO [ClientEvaluatedRecord]
(
	[ID]
)
VALUES
(
	@ID
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Item1 Integer -- Int32
SET     @Item1 = 5

SELECT
	[t1].[ID]
FROM
	[ClientEvaluatedRecord] [t1]
WHERE
	[t1].[ID] = @Item1
LIMIT 2


-- SQLite.MS SQLite
DELETE FROM
	[Issue4646Table]



-- SQLite.MS SQLite
DECLARE @Value Integer -- Int32
SET     @Value = NULL
DECLARE @ValueN Integer -- Int32
SET     @ValueN = NULL

INSERT INTO [Issue4646Table]
(
	[Value],
	[ValueN]
)
VALUES
(
	@Value,
	@ValueN
)



-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueN]
FROM
	[Issue4646Table] [t1]
LIMIT 2




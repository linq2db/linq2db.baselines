BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value_1  -- Int32
SET     @Value_1 = 100

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[Id],
	[t].[Value],
	[s].[c1]
FROM
	[SampleClass] [t]
		INNER JOIN (
			SELECT
				1 as [c1]
		) [s] ON [s].[c1] = [t].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [SampleClass]


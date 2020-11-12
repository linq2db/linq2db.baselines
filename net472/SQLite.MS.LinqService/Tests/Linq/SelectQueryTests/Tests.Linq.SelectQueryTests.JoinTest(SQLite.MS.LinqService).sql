BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [SampleClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
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
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[Value],
	1,
	3
FROM
	[SampleClass] [t]
		INNER JOIN (
			SELECT
				1 as [Key_1]
		) [s] ON [s].[Key_1] = [t].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [SampleClass]


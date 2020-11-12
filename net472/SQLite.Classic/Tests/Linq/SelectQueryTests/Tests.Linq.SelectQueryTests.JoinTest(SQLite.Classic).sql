BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [SampleClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(1,100)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

DROP TABLE [SampleClass]


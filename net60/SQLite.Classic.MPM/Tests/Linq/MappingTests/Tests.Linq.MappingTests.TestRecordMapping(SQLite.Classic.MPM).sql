BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Record]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Record]
(
	[Id]        INTEGER       NOT NULL,
	[BaseValue] NVarChar(255)     NULL,
	[Value]     NVarChar(255)     NULL,

	CONSTRAINT [PK_Record] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @BaseValue NVarChar(7) -- String
SET     @BaseValue = 'OneBase'
DECLARE @Value_1 NVarChar(3) -- String
SET     @Value_1 = 'One'

INSERT INTO [Record]
(
	[Id],
	[BaseValue],
	[Value]
)
VALUES
(
	@Id,
	@BaseValue,
	@Value_1
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @BaseValue NVarChar(7) -- String
SET     @BaseValue = 'TwoBase'
DECLARE @Value_1 NVarChar(3) -- String
SET     @Value_1 = 'Two'

INSERT INTO [Record]
(
	[Id],
	[BaseValue],
	[Value]
)
VALUES
(
	@Id,
	@BaseValue,
	@Value_1
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[BaseValue],
	[t1].[Value]
FROM
	[Record] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[Value],
	[r].[BaseValue]
FROM
	[Record] [r]
ORDER BY
	[r].[Id]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Record]


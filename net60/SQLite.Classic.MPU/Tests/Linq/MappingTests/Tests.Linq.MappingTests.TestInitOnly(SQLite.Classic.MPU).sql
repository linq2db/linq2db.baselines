BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [WithInitOnly]
(
	[BaseValue] NVarChar(255)     NULL,
	[Id]        INTEGER       NOT NULL,
	[Value]     NVarChar(255)     NULL,

	CONSTRAINT [PK_WithInitOnly] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @BaseValue NVarChar(7) -- String
SET     @BaseValue = 'OneBase'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value_1 NVarChar(3) -- String
SET     @Value_1 = 'One'

INSERT INTO [WithInitOnly]
(
	[BaseValue],
	[Id],
	[Value]
)
VALUES
(
	@BaseValue,
	@Id,
	@Value_1
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @BaseValue NVarChar(7) -- String
SET     @BaseValue = 'TwoBase'
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value_1 NVarChar(3) -- String
SET     @Value_1 = 'Two'

INSERT INTO [WithInitOnly]
(
	[BaseValue],
	[Id],
	[Value]
)
VALUES
(
	@BaseValue,
	@Id,
	@Value_1
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[BaseValue],
	[t1].[Id],
	[t1].[Value]
FROM
	[WithInitOnly] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[Value],
	[r].[BaseValue]
FROM
	[WithInitOnly] [r]
ORDER BY
	[r].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [WithInitOnly]


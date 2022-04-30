BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [RecordLike]
(
	[BaseValue] NVarChar(255)     NULL,
	[Id]        INTEGER       NOT NULL,
	[Value]     NVarChar(255)     NULL,

	CONSTRAINT [PK_RecordLike] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @BaseValue NVarChar(7) -- String
SET     @BaseValue = 'OneBase'
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value_1 NVarChar(3) -- String
SET     @Value_1 = 'One'

INSERT INTO [RecordLike]
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

INSERT INTO [RecordLike]
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
	[RecordLike] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[Value],
	[r].[BaseValue]
FROM
	[RecordLike] [r]
ORDER BY
	[r].[Id]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [RecordLike]


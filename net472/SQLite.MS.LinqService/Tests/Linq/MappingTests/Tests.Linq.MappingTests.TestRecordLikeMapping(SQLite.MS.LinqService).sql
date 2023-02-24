BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [RecordLike]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [RecordLike]
(
	[Id]        INTEGER       NOT NULL,
	[BaseValue] NVarChar(255)     NULL,
	[Value]     NVarChar(255)     NULL,

	CONSTRAINT [PK_RecordLike] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @BaseValue NVarChar(7) -- String
SET     @BaseValue = 'OneBase'
DECLARE @Value_1 NVarChar(3) -- String
SET     @Value_1 = 'One'

INSERT INTO [RecordLike]
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
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @BaseValue NVarChar(7) -- String
SET     @BaseValue = 'TwoBase'
DECLARE @Value_1 NVarChar(3) -- String
SET     @Value_1 = 'Two'

INSERT INTO [RecordLike]
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
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[BaseValue],
	[t1].[Value]
FROM
	[RecordLike] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[Value],
	[r].[BaseValue]
FROM
	[RecordLike] [r]
ORDER BY
	[r].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [RecordLike]


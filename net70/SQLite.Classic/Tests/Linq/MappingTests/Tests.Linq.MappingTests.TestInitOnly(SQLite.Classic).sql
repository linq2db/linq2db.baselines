BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WithInitOnly]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [WithInitOnly]
(
	[Id]        INTEGER       NOT NULL,
	[BaseValue] NVarChar(255)     NULL,
	[Value]     NVarChar(255)     NULL,

	CONSTRAINT [PK_WithInitOnly] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @BaseValue NVarChar(7) -- String
SET     @BaseValue = 'OneBase'
DECLARE @Value_1 NVarChar(3) -- String
SET     @Value_1 = 'One'

INSERT INTO [WithInitOnly]
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
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @BaseValue NVarChar(7) -- String
SET     @BaseValue = 'TwoBase'
DECLARE @Value_1 NVarChar(3) -- String
SET     @Value_1 = 'Two'

INSERT INTO [WithInitOnly]
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
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[BaseValue],
	[t1].[Value]
FROM
	[WithInitOnly] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[Value],
	[r].[BaseValue]
FROM
	[WithInitOnly] [r]
ORDER BY
	[r].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [WithInitOnly]


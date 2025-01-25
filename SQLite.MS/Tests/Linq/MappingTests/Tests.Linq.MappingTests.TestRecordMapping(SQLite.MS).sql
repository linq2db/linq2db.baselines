BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @BaseValue NVarChar(7) -- String
SET     @BaseValue = 'OneBase'
DECLARE @Value NVarChar(3) -- String
SET     @Value = 'One'

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
	@Value
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @BaseValue NVarChar(7) -- String
SET     @BaseValue = 'TwoBase'
DECLARE @Value NVarChar(3) -- String
SET     @Value = 'Two'

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
	@Value
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	[t1].[BaseValue]
FROM
	[Record] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[Value],
	[r].[BaseValue]
FROM
	[Record] [r]
ORDER BY
	[r].[Id]


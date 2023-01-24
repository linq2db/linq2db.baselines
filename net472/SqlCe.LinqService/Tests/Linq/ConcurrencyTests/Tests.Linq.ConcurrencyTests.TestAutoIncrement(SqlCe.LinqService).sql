BeforeExecute
-- SqlCe

DROP TABLE [ConcurrencyAutoIncrement]

BeforeExecute
-- SqlCe

CREATE TABLE [ConcurrencyAutoIncrement]
(
	[Id]    Int           NOT NULL,
	[Stamp] Int           NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcurrencyAutoIncrement] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'initial'

INSERT INTO [ConcurrencyAutoIncrement]
(
	[Id],
	[Stamp],
	[Value]
)
VALUES
(
	@Id,
	@Stamp,
	@Value_1
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlCe
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'value 1'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10

UPDATE
	[ConcurrencyAutoIncrement]
SET
	[ConcurrencyAutoIncrement].[Stamp] = [ConcurrencyAutoIncrement].[Stamp] + 1,
	[ConcurrencyAutoIncrement].[Value] = @Value_1
WHERE
	[ConcurrencyAutoIncrement].[Id] = @Id AND [ConcurrencyAutoIncrement].[Stamp] = @Stamp

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlCe
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'value 2'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

UPDATE
	[ConcurrencyAutoIncrement]
SET
	[ConcurrencyAutoIncrement].[Stamp] = [ConcurrencyAutoIncrement].[Stamp] + 1,
	[ConcurrencyAutoIncrement].[Value] = @Value_1
WHERE
	[ConcurrencyAutoIncrement].[Id] = @Id AND [ConcurrencyAutoIncrement].[Stamp] = @Stamp

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlCe
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'value 3'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

UPDATE
	[ConcurrencyAutoIncrement]
SET
	[ConcurrencyAutoIncrement].[Stamp] = [ConcurrencyAutoIncrement].[Stamp] + 1,
	[ConcurrencyAutoIncrement].[Value] = @Value_1
WHERE
	[ConcurrencyAutoIncrement].[Id] = @Id AND [ConcurrencyAutoIncrement].[Stamp] = @Stamp

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

DELETE FROM
	[ConcurrencyAutoIncrement]
WHERE
	[ConcurrencyAutoIncrement].[Id] = @Id AND [ConcurrencyAutoIncrement].[Stamp] = @Stamp

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -8

DELETE FROM
	[ConcurrencyAutoIncrement]
WHERE
	[ConcurrencyAutoIncrement].[Id] = @Id AND [ConcurrencyAutoIncrement].[Stamp] = @Stamp

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyAutoIncrement] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [ConcurrencyAutoIncrement]


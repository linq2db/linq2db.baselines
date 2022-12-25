BeforeExecute
-- SqlCe

DROP TABLE [ConcurrencyTable]

BeforeExecute
-- SqlCe

CREATE TABLE [ConcurrencyTable]
(
	[Id]    Int           NOT NULL,
	[Stamp] Int           NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcurrencyTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'initial'

INSERT INTO [ConcurrencyTable]
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
	[ConcurrencyTable] [t1]

BeforeExecute
-- SqlCe
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'value 1'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10

UPDATE
	[ConcurrencyTable]
SET
	[ConcurrencyTable].[Stamp] = [ConcurrencyTable].[Stamp] + 1,
	[ConcurrencyTable].[Value] = @Value_1
WHERE
	[ConcurrencyTable].[Id] = @Id AND [ConcurrencyTable].[Stamp] = @Stamp

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SqlCe
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'value 2'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

UPDATE
	[ConcurrencyTable]
SET
	[ConcurrencyTable].[Stamp] = [ConcurrencyTable].[Stamp] + 1,
	[ConcurrencyTable].[Value] = @Value_1
WHERE
	[ConcurrencyTable].[Id] = @Id AND [ConcurrencyTable].[Stamp] = @Stamp

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SqlCe
DECLARE @Value_1 NVarChar(7) -- String
SET     @Value_1 = 'value 3'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

UPDATE
	[ConcurrencyTable]
SET
	[ConcurrencyTable].[Stamp] = [ConcurrencyTable].[Stamp] + 1,
	[ConcurrencyTable].[Value] = @Value_1
WHERE
	[ConcurrencyTable].[Id] = @Id AND [ConcurrencyTable].[Stamp] = @Stamp

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

DELETE FROM
	[ConcurrencyTable]
WHERE
	[ConcurrencyTable].[Id] = @Id AND [ConcurrencyTable].[Stamp] = @Stamp

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -8

DELETE FROM
	[ConcurrencyTable]
WHERE
	[ConcurrencyTable].[Id] = @Id AND [ConcurrencyTable].[Stamp] = @Stamp

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value]
FROM
	[ConcurrencyTable] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [ConcurrencyTable]


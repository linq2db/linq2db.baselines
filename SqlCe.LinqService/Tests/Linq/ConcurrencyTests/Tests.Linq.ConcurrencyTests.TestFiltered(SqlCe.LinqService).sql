BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO [ConcurrencyFiltered]
(
	[Id],
	[Stamp],
	[Value]
)
VALUES
(
	@Id,
	@Stamp,
	@Value
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value] as [Value_1]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- SqlCe
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10

UPDATE
	[ConcurrencyFiltered]
SET
	[Stamp] = [ConcurrencyFiltered].[Stamp] + 1,
	[Value] = @Value
WHERE
	[ConcurrencyFiltered].[Id] = 2 AND [ConcurrencyFiltered].[Id] = @Id AND
	[ConcurrencyFiltered].[Stamp] = @Stamp

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value] as [Value_1]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- SqlCe
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -10

UPDATE
	[ConcurrencyFiltered]
SET
	[Stamp] = [ConcurrencyFiltered].[Stamp] + 1,
	[Value] = @Value
WHERE
	[ConcurrencyFiltered].[Id] = 1 AND [ConcurrencyFiltered].[Id] = @Id AND
	[ConcurrencyFiltered].[Stamp] = @Stamp

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value] as [Value_1]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

DELETE FROM
	[ConcurrencyFiltered]
WHERE
	[ConcurrencyFiltered].[Id] = 2 AND [ConcurrencyFiltered].[Id] = @Id AND
	[ConcurrencyFiltered].[Stamp] = @Stamp

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value] as [Value_1]
FROM
	[ConcurrencyFiltered] [t1]

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Stamp Int -- Int32
SET     @Stamp = -9

DELETE FROM
	[ConcurrencyFiltered]
WHERE
	[ConcurrencyFiltered].[Id] = 1 AND [ConcurrencyFiltered].[Id] = @Id AND
	[ConcurrencyFiltered].[Stamp] = @Stamp

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value] as [Value_1]
FROM
	[ConcurrencyFiltered] [t1]


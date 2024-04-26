BeforeExecute
-- SqlCe

DROP TABLE [ConcurrencyFiltered]

BeforeExecute
-- SqlCe

CREATE TABLE [ConcurrencyFiltered]
(
	[Id]    Int           NOT NULL,
	[Stamp] Int           NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_ConcurrencyFiltered] PRIMARY KEY ([Id])
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

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value] as [Value_1]
FROM
	[ConcurrencyFiltered] [t1]

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

SELECT
	[t1].[Id],
	[t1].[Stamp],
	[t1].[Value] as [Value_1]
FROM
	[ConcurrencyFiltered] [t1]

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

DROP TABLE [ConcurrencyFiltered]


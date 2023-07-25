﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [UpdateSetTest]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [UpdateSetTest]
(
	[Id]     Int  NOT NULL,
	[Value1] Guid NOT NULL,
	[Value2] Int  NOT NULL,
	[Value3] Int  NOT NULL,
	[Value4] Guid     NULL,
	[Value5] Int      NULL,
	[Value6] Int      NULL,

	CONSTRAINT [PK_UpdateSetTest] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 Guid
SET     @Value1 = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 10
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 6
DECLARE @Value4 Guid
SET     @Value4 = NULL
DECLARE @Value5 Integer -- Int32
SET     @Value5 = NULL
DECLARE @Value6 Integer -- Int32
SET     @Value6 = NULL

INSERT INTO [UpdateSetTest]
(
	[Id],
	[Value1],
	[Value2],
	[Value3],
	[Value4],
	[Value5],
	[Value6]
)
VALUES
(
	@Id,
	@Value1,
	@Value2,
	@Value3,
	@Value4,
	@Value5,
	@Value6
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 7
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [_]
SET
	[_].[Value3] = @Value3
WHERE
	[_].[Id] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT TOP 2
	[_].[Value3]
FROM
	[UpdateSetTest] [_]
WHERE
	[_].[Id] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 8
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [_]
SET
	[_].[Value3] = @Value3
WHERE
	[_].[Id] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT TOP 2
	[_].[Value3]
FROM
	[UpdateSetTest] [_]
WHERE
	[_].[Id] = @id

BeforeExecute
-- Access AccessOleDb

DROP TABLE [UpdateSetTest]


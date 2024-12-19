BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [UpdateSetTest]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value1 Guid
SET     @Value1 = {guid {bd3973a5-4323-4dd8-9f4f-df9f93e2a627}}
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 11
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value2] = @Value2
WHERE
	[t1].[Id] = @id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value2]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 12
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value2] = @Value2
WHERE
	[t1].[Id] = @id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value2]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = @id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [UpdateSetTest]


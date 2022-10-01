BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [UpdateSetTest]

BeforeExecute
-- Access.Odbc AccessODBC

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
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value1 UniqueIdentifier -- Guid
SET     @Value1 = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'
DECLARE @Value2 Int -- Int32
SET     @Value2 = 10
DECLARE @Value3 Int -- Int32
SET     @Value3 = 6
DECLARE @Value4 UniqueIdentifier -- Guid
SET     @Value4 = NULL
DECLARE @Value5 Int -- Int32
SET     @Value5 = NULL
DECLARE @Value6 Int -- Int32
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
	?,
	?,
	?,
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Guid6 UniqueIdentifier -- Guid
SET     @Guid6 = '{66aa9df9-260f-4a2b-ac50-9ca8ce7ad725}'
DECLARE @Value6 Int -- Int32
SET     @Value6 = 8

UPDATE
	[UpdateSetTest] [x]
SET
	[x].[Value2] = 20,
	[x].[Value5] = [x].[Value2] * 5,
	[x].[Value1] = ?,
	[x].[Value3] = 8,
	[x].[Value6] = ?
WHERE
	[x].[Id] = 1

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 1
	[x].[Id],
	[x].[Value1],
	[x].[Value2],
	[x].[Value3],
	[x].[Value4],
	[x].[Value5],
	[x].[Value6]
FROM
	[UpdateSetTest] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [UpdateSetTest]


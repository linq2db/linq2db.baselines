BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [UpdateSetTest]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value1 UniqueIdentifier -- Guid
SET     @Value1 = 'bd3973a5-4323-4dd8-9f4f-df9f93e2a627'
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
-- Access.Ace.Odbc AccessODBC
DECLARE @Value3 Int -- Int32
SET     @Value3 = 7
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value3] = ?
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value3]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Value3 Int -- Int32
SET     @Value3 = 8
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value3] = ?
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value3]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [UpdateSetTest]


BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [UpdateSetTest]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

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
-- Access.Jet.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value1  -- Guid
SET     @Value1 = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'
DECLARE @Value2  -- Int32
SET     @Value2 = 10
DECLARE @Value3  -- Int32
SET     @Value3 = 6
DECLARE @Value4  -- Guid
SET     @Value4 = NULL
DECLARE @Value5  -- Int32
SET     @Value5 = NULL
DECLARE @Value6  -- Int32
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
-- Access.Jet.Odbc AccessODBC
DECLARE @Value5  -- Int32
SET     @Value5 = 11
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value5] = ?
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id  -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value5]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Value5  -- Int32
SET     @Value5 = 12
DECLARE @id  -- Int32
SET     @id = 1

UPDATE
	[UpdateSetTest] [t1]
SET
	[t1].[Value5] = ?
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id  -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[Value5]
FROM
	[UpdateSetTest] [t1]
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [UpdateSetTest]


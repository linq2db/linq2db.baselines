BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [AsyncDataTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [AsyncDataTable]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_AsyncDataTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 4

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 5

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 6

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 7

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 8

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 9

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 10

INSERT INTO [AsyncDataTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 2

SELECT
	MAX([c_1].[Id])
FROM
	[AsyncDataTable] [c_1]
WHERE
	[c_1].[Id] > @p

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [AsyncDataTable]


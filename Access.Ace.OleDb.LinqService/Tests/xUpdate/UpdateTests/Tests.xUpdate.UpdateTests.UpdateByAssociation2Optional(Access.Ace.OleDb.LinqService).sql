BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [MainTable]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [MainTable]
(
	[Id]    Int           NOT NULL,
	[Field] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Field VarWChar(7) -- String
SET     @Field = 'value 1'

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Field VarWChar(7) -- String
SET     @Field = 'value 2'

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Field VarWChar(7) -- String
SET     @Field = 'value 3'

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [AssociatedTable]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [AssociatedTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [AssociatedTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO [AssociatedTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 3

UPDATE
	[MainTable] [a_MainOptional],
	[AssociatedTable] [p]
SET
	[a_MainOptional].[Field] = 'test'
WHERE
	[p].[Id] = @id AND [p].[Id] = [a_MainOptional].[Id]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [AssociatedTable]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [MainTable]


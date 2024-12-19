BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [MainTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [MainTable]
(
	[Id]    Int           NOT NULL,
	[Field] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [AssociatedTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [AssociatedTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 3

UPDATE
	(
		SELECT
			[t1].[Id],
			[a_MainOptional].[Id] as [Id_1],
			[a_MainOptional].[Field]
		FROM
			[MainTable] [a_MainOptional],
			[MainTable] [t1]
	) [cross_1]
		LEFT JOIN [AssociatedTable] [a_AssociatedOptional] ON ([cross_1].[Id] = [a_AssociatedOptional].[Id])
SET
	[cross_1].[Field] = 'test'
WHERE
	[cross_1].[Id] = @id AND [a_AssociatedOptional].[Id] = [cross_1].[Id_1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [AssociatedTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [MainTable]


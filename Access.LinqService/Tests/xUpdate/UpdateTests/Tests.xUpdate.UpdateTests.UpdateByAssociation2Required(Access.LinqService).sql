BeforeExecute
-- Access AccessOleDb

DROP TABLE [MainTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [MainTable]
(
	[Id]    Int           NOT NULL,
	[Field] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb

DROP TABLE [AssociatedTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [AssociatedTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 3

UPDATE
	[MainTable] [a_MainRequired],
	[AssociatedTable] [pat]
SET
	[a_MainRequired].[Field] = 'test'
WHERE
	[pat].[Id] = @id AND [pat].[Id] = [a_MainRequired].[Id]

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [AssociatedTable]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [MainTable]


BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [test_insert_or_replace]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [test_insert_or_replace]
(
	[id]         Int           NOT NULL,
	[name]       NVarChar(255)     NULL,
	[created_by] NVarChar(255)     NULL,
	[updated_by] NVarChar(255)     NULL,

	CONSTRAINT [PK_test_insert_or_replace] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Name VarWChar(5) -- String
SET     @Name = 'Test1'
DECLARE @UpdatedBy VarWChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[test_insert_or_replace] [t1]
SET
	[t1].[name] = @Name,
	[t1].[updated_by] = @UpdatedBy
WHERE
	[t1].[id] = @Id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(5) -- String
SET     @Name = 'Test1'
DECLARE @CreatedBy VarWChar(10) -- String
SET     @CreatedBy = 'TEST_USER3'

INSERT INTO [test_insert_or_replace]
(
	[id],
	[name],
	[created_by]
)
VALUES
(
	@Id,
	@Name,
	@CreatedBy
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[id],
	[t1].[name],
	[t1].[created_by],
	[t1].[updated_by]
FROM
	[test_insert_or_replace] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Name VarWChar(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy VarWChar(10) -- String
SET     @UpdatedBy = 'TEST_USER3'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[test_insert_or_replace] [t1]
SET
	[t1].[name] = @Name,
	[t1].[updated_by] = @UpdatedBy
WHERE
	[t1].[id] = @Id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[id],
	[t1].[name],
	[t1].[created_by],
	[t1].[updated_by]
FROM
	[test_insert_or_replace] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [test_insert_or_replace]


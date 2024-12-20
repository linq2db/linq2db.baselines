BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [test_insert_or_replace]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [test_insert_or_replace]
(
	[id]         Int           NOT NULL,
	[name]       NVarChar(255)     NULL,
	[created_by] NVarChar(255)     NULL,
	[updated_by] NVarChar(255)     NULL,

	CONSTRAINT [PK_test_insert_or_replace] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[test_insert_or_replace] [t1]
SET
	[t1].[name] = ?,
	[t1].[updated_by] = ?
WHERE
	[t1].[id] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @CreatedBy NVarChar(10) -- String
SET     @CreatedBy = 'TEST_USER1'

INSERT INTO [test_insert_or_replace]
(
	[id],
	[name],
	[created_by]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[t1].[id],
	[t1].[name],
	[t1].[created_by],
	[t1].[updated_by]
FROM
	[test_insert_or_replace] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy NVarChar(10) -- String
SET     @UpdatedBy = 'TEST_USER1'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[test_insert_or_replace] [t1]
SET
	[t1].[name] = ?,
	[t1].[updated_by] = ?
WHERE
	[t1].[id] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT TOP 2
	[t1].[id],
	[t1].[name],
	[t1].[created_by],
	[t1].[updated_by]
FROM
	[test_insert_or_replace] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [test_insert_or_replace]


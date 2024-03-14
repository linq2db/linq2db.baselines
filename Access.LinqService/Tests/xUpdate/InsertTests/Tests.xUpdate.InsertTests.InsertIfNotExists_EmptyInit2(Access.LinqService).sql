BeforeExecute
-- Access AccessOleDb

DROP TABLE [test_insert_or_replace]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [test_insert_or_replace]
(
	[id]         Int           NOT NULL,
	[name]       NVarChar(255)     NULL,
	[created_by] NVarChar(255)     NULL,
	[updated_by] NVarChar(255)     NULL,

	CONSTRAINT [PK_test_insert_or_replace] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1

SELECT
	1
FROM
	[test_insert_or_replace] [t1]
WHERE
	[t1].[id] = @Id

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'test'

INSERT INTO [test_insert_or_replace]
(
	[id],
	[name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1

SELECT
	1
FROM
	[test_insert_or_replace] [t1]
WHERE
	[t1].[id] = @Id

BeforeExecute
-- Access AccessOleDb

DROP TABLE [test_insert_or_replace]


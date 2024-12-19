BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [test_insert_or_replace]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [test_insert_or_replace]
(
	[id]         Int           NOT NULL,
	[name]       NVarChar(255)     NULL,
	[created_by] NVarChar(255)     NULL,
	[updated_by] NVarChar(255)     NULL,

	CONSTRAINT [PK_test_insert_or_replace] PRIMARY KEY CLUSTERED ([id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	1
FROM
	[test_insert_or_replace] [t1]
WHERE
	[t1].[id] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

INSERT INTO [test_insert_or_replace]
(
	[id],
	[name]
)
VALUES
(
	1,
	'test'
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	1
FROM
	[test_insert_or_replace] [t1]
WHERE
	[t1].[id] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [test_insert_or_replace]


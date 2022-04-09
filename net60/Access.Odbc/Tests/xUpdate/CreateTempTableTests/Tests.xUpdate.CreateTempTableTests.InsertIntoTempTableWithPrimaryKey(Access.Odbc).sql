BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey] PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Key_1 Int -- Int32
SET     @Key_1 = 1

INSERT INTO [TableWithPrimaryKey]
(
	[Key]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TableWithPrimaryKey]


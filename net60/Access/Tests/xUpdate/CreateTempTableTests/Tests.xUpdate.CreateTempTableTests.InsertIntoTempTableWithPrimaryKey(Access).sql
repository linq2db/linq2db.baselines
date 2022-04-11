BeforeExecute
-- Access AccessOleDb

CREATE TABLE [TableWithPrimaryKey2]
(
	[Key] Int NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey2] PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Key_1 Integer -- Int32
SET     @Key_1 = 1

INSERT INTO [TableWithPrimaryKey2]
(
	[Key]
)
VALUES
(
	@Key_1
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TableWithPrimaryKey2]


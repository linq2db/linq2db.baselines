﻿BeforeExecute
-- Access AccessOleDb

CREATE TABLE [TableWithPrimaryKey2]
(
	[Key] Int NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey2] PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Key Integer -- Int32
SET     @Key = 1

INSERT INTO [TableWithPrimaryKey2]
(
	[Key]
)
VALUES
(
	@Key
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TableWithPrimaryKey2]


﻿BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [TableWithPrimaryKey2]
(
	[Key] Int NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey2] PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Key Int -- Int32
SET     @Key = 1

INSERT INTO [TableWithPrimaryKey2]
(
	[Key]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TableWithPrimaryKey2]


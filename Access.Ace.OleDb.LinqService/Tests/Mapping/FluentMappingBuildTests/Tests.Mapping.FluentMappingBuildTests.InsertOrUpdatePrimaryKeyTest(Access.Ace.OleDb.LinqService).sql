﻿BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [FluentTemp]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [FluentTemp]
(
	[ID]   Int          NOT NULL,
	[Name] NVarChar(20)     NULL,

	CONSTRAINT [PK_FluentTemp] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'John'

INSERT INTO [FluentTemp]
(
	[ID],
	[Name]
)
VALUES
(
	@ID,
	@Name
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

UPDATE
	[FluentTemp] [t1]
SET
	[t1].[ID] = [t1].[ID],
	[t1].[Name] = [t1].[Name]
WHERE
	[t1].[ID] = 1

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [FluentTemp]


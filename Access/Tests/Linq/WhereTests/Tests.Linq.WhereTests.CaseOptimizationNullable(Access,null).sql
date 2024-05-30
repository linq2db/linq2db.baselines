﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [WhereWithString]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [WhereWithString]
(
	[Id]          Int           NOT NULL,
	[StringValue] NVarChar(255)     NULL,

	CONSTRAINT [PK_WhereWithString] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StringValue VarWChar(4) -- String
SET     @StringValue = 'Str1'

INSERT INTO [WhereWithString]
(
	[Id],
	[StringValue]
)
VALUES
(
	@Id,
	@StringValue
)

BeforeExecute
-- Access AccessOleDb

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [WhereWithString]


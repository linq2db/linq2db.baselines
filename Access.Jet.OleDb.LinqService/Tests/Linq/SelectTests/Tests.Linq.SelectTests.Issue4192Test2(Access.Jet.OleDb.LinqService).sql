﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4192TableNullable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue4192TableNullable]
(
	[Name]     NVarChar(255)     NULL,
	[ParentId] Int               NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @parentId Integer -- Int32
SET     @parentId = 12

SELECT
	[i].[Name],
	[i].[ParentId]
FROM
	[Issue4192TableNullable] [i]
WHERE
	[i].[ParentId] = @parentId

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue4192TableNullable]


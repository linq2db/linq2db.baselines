BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4192TableNullable]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue4192TableNullable]
(
	[Name]     NVarChar(255)     NULL,
	[ParentId] Int               NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @parentId Int -- Int32
SET     @parentId = 12

SELECT
	[i].[Name],
	[i].[ParentId]
FROM
	[Issue4192TableNullable] [i]
WHERE
	[i].[ParentId] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4192TableNullable]


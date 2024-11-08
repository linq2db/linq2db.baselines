BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4192TableNotNullable]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Issue4192TableNotNullable]
(
	[Name]     NVarChar(255)     NULL,
	[ParentId] Int           NOT NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @parentId  -- Int32
SET     @parentId = 12

SELECT
	[i].[Name],
	[i].[ParentId]
FROM
	[Issue4192TableNotNullable] [i]
WHERE
	[i].[ParentId] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Issue4192TableNotNullable]


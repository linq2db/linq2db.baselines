BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4192TableNullable]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [Issue4192TableNullable]
(
	[Name]     NVarChar(255)     NULL,
	[ParentId] Int               NULL
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @parentId  -- Int32
SET     @parentId = 12

SELECT
	[i].[Name],
	[i].[ParentId]
FROM
	[Issue4192TableNullable] [i]
WHERE
	[i].[ParentId] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [Issue4192TableNullable]


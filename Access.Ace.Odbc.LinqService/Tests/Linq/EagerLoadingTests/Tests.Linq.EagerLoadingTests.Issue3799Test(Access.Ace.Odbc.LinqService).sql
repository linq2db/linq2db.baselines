BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Test3799Item]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [Test3799Item]
(
	[Id]       Int           NOT NULL,
	[ParentId] Int               NULL,
	[Name]     NVarChar(255) NOT NULL,

	CONSTRAINT [PK_Test3799Item] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @ParentId  -- Int32
SET     @ParentId = NULL
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'root'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @ParentId  -- Int32
SET     @ParentId = 1
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'child 1'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @ParentId  -- Int32
SET     @ParentId = 2
DECLARE @Name NVarChar(9) -- String
SET     @Name = 'child 1.1'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @ParentId  -- Int32
SET     @ParentId = 2
DECLARE @Name NVarChar(9) -- String
SET     @Name = 'child 1.2'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 5
DECLARE @ParentId  -- Int32
SET     @ParentId = 1
DECLARE @Name NVarChar(7) -- String
SET     @Name = 'child 2'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @ParentId  -- Int32
SET     @ParentId = 5
DECLARE @Name NVarChar(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 7
DECLARE @ParentId  -- Int32
SET     @ParentId = 5
DECLARE @Name NVarChar(9) -- String
SET     @Name = 'child 2.1'

INSERT INTO [Test3799Item]
(
	[Id],
	[ParentId],
	[Name]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[m_1].[Children],
	[d].[Name]
FROM
	(
		SELECT DISTINCT
			(
				SELECT TOP 1
					[a_Children].[Id]
				FROM
					[Test3799Item] [a_Children]
				WHERE
					[item_1].[Id] = [a_Children].[ParentId]
			) as [Children]
		FROM
			[Test3799Item] [item_1]
	) [m_1]
		INNER JOIN [Test3799Item] [d] ON ([m_1].[Children] = [d].[ParentId] OR [m_1].[Children] IS NULL AND [d].[ParentId] IS NULL)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[item_1].[Name],
	(
		SELECT TOP 1
			[a_Children].[Name]
		FROM
			[Test3799Item] [a_Children]
		WHERE
			[item_1].[Id] = [a_Children].[ParentId]
	),
	(
		SELECT TOP 1
			[a_Children_1].[Id]
		FROM
			[Test3799Item] [a_Children_1]
		WHERE
			[item_1].[Id] = [a_Children_1].[ParentId]
	)
FROM
	[Test3799Item] [item_1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [Test3799Item]


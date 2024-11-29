﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [GuidTable]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [GuidTable]
(
	[Id]             Int  NOT NULL,
	[Column]         Guid NOT NULL,
	[ColumnNullable] Guid     NULL
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column UniqueIdentifier -- Guid
SET     @Column = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @ColumnNullable UniqueIdentifier -- Guid
SET     @ColumnNullable = NULL

INSERT INTO [GuidTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column UniqueIdentifier -- Guid
SET     @Column = '{a948600d-de21-4f74-8ac2-9516b287076e}'
DECLARE @ColumnNullable UniqueIdentifier -- Guid
SET     @ColumnNullable = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'

INSERT INTO [GuidTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Column UniqueIdentifier -- Guid
SET     @Column = '{a948600d-de21-4f74-8ac2-9516b287076e}'
DECLARE @ColumnNullable UniqueIdentifier -- Guid
SET     @ColumnNullable = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[GuidTable] [r]
WHERE
	[r].[Column] = ? AND [r].[ColumnNullable] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[r].[Id],
	[r].[Column],
	[r].[ColumnNullable]
FROM
	[GuidTable] [r]
WHERE
	[r].[Column] = '{a948600d-de21-4f74-8ac2-9516b287076e}' AND
	[r].[ColumnNullable] = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[GuidTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column UniqueIdentifier -- Guid
SET     @Column = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @ColumnNullable UniqueIdentifier -- Guid
SET     @ColumnNullable = NULL

INSERT INTO [GuidTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column UniqueIdentifier -- Guid
SET     @Column = '{a948600d-de21-4f74-8ac2-9516b287076e}'
DECLARE @ColumnNullable UniqueIdentifier -- Guid
SET     @ColumnNullable = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'

INSERT INTO [GuidTable]
(
	[Id],
	[Column],
	[ColumnNullable]
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
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[GuidTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column UniqueIdentifier -- Guid
SET     @Column = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @ColumnNullable UniqueIdentifier -- Guid
SET     @ColumnNullable = NULL

INSERT INTO [GuidTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column UniqueIdentifier -- Guid
SET     @Column = '{a948600d-de21-4f74-8ac2-9516b287076e}'
DECLARE @ColumnNullable UniqueIdentifier -- Guid
SET     @ColumnNullable = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'

INSERT INTO [GuidTable]
(
	[Id],
	[Column],
	[ColumnNullable]
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
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[GuidTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Column UniqueIdentifier -- Guid
SET     @Column = '{bc7b663d-0fde-4327-8f92-5d8cc3a11d11}'
DECLARE @ColumnNullable UniqueIdentifier -- Guid
SET     @ColumnNullable = NULL

INSERT INTO [GuidTable]
(
	[Id],
	[Column],
	[ColumnNullable]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Column UniqueIdentifier -- Guid
SET     @Column = '{a948600d-de21-4f74-8ac2-9516b287076e}'
DECLARE @ColumnNullable UniqueIdentifier -- Guid
SET     @ColumnNullable = '{bd3973a5-4323-4dd8-9f4f-df9f93e2a627}'

INSERT INTO [GuidTable]
(
	[Id],
	[Column],
	[ColumnNullable]
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
	[t1].[Id],
	[t1].[Column],
	[t1].[ColumnNullable]
FROM
	[GuidTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [GuidTable]


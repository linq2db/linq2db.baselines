﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [CoalesceNullableFields]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [CoalesceNullableFields]
(
	[Id]        Int NOT NULL,
	[Nullable1] Int     NULL,
	[Nullable2] Int     NULL,
	[Nullable3] Int     NULL,

	CONSTRAINT [PK_CoalesceNullableFields] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Nullable1 Int -- Int32
SET     @Nullable1 = 10
DECLARE @Nullable2 Int -- Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3 Int -- Int32
SET     @Nullable3 = NULL

INSERT INTO [CoalesceNullableFields]
(
	[Id],
	[Nullable1],
	[Nullable2],
	[Nullable3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Nullable1 Int -- Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2 Int -- Int32
SET     @Nullable2 = 20
DECLARE @Nullable3 Int -- Int32
SET     @Nullable3 = NULL

INSERT INTO [CoalesceNullableFields]
(
	[Id],
	[Nullable1],
	[Nullable2],
	[Nullable3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Nullable1 Int -- Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2 Int -- Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3 Int -- Int32
SET     @Nullable3 = 30

INSERT INTO [CoalesceNullableFields]
(
	[Id],
	[Nullable1],
	[Nullable2],
	[Nullable3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Nullable1 Int -- Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2 Int -- Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3 Int -- Int32
SET     @Nullable3 = NULL

INSERT INTO [CoalesceNullableFields]
(
	[Id],
	[Nullable1],
	[Nullable2],
	[Nullable3]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	IIF([t].[Nullable1] IS NULL, IIF([t].[Nullable2] IS NULL, IIF([t].[Nullable3] IS NULL, [t].[Id], [t].[Nullable3]), [t].[Nullable2]), [t].[Nullable1]),
	IIF([t].[Nullable2] IS NULL, IIF([t].[Nullable1] IS NULL, IIF([t].[Nullable3] IS NULL, [t].[Id], [t].[Nullable3]), [t].[Nullable1]), [t].[Nullable2]),
	IIF([t].[Nullable2] IS NULL, IIF([t].[Nullable3] IS NULL, IIF([t].[Nullable1] IS NULL, [t].[Id], [t].[Nullable1]), [t].[Nullable3]), [t].[Nullable2]),
	IIF([t].[Nullable3] IS NULL, IIF([t].[Nullable1] IS NULL, IIF([t].[Nullable2] IS NULL, [t].[Id], [t].[Nullable2]), [t].[Nullable1]), [t].[Nullable3]),
	IIF([t].[Nullable3] IS NULL, IIF([t].[Nullable2] IS NULL, IIF([t].[Nullable1] IS NULL, [t].[Id], [t].[Nullable1]), [t].[Nullable2]), [t].[Nullable3]),
	[t].[Id],
	IIF([t].[Nullable1] IS NULL, [t].[Id], [t].[Nullable1]),
	IIF([t].[Nullable1] IS NULL, IIF([t].[Nullable2] IS NULL, [t].[Id], [t].[Nullable2]), [t].[Nullable1])
FROM
	[CoalesceNullableFields] [t]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[Nullable1],
	[t1].[Nullable2],
	[t1].[Nullable3]
FROM
	[CoalesceNullableFields] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [CoalesceNullableFields]


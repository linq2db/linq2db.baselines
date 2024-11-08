BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Isue2424Table]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Isue2424Table]
(
	[Id]       Int           NOT NULL,
	[StrValue] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @StrValue VarWChar(1) -- String
SET     @StrValue = '1'

INSERT INTO [Isue2424Table]
(
	[Id],
	[StrValue]
)
VALUES
(
	@Id,
	@StrValue
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @StrValue VarWChar(1) -- String
SET     @StrValue = '3'

INSERT INTO [Isue2424Table]
(
	[Id],
	[StrValue]
)
VALUES
(
	@Id,
	@StrValue
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @StrValue VarWChar(1) -- String
SET     @StrValue = '5'

INSERT INTO [Isue2424Table]
(
	[Id],
	[StrValue]
)
VALUES
(
	@Id,
	@StrValue
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '4'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '4'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '2'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '2'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] > '3'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] > '3'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] < '3'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] < '3'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] = '3'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] = '3'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '2'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '2'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '4'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '4'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] < '3'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] < '3'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] > '3'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] > '3'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '5'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '5'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '1'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '1'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Isue2424Table]


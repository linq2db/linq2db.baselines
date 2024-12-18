BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Isue2424Table]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [Isue2424Table]
(
	[Id]       Int           NOT NULL,
	[StrValue] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '4' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '4' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '2' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '2' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] > '3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] > '3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] < '3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] < '3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] = '3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] = '3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '2' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '2' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '4' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '4' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] < '3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] < '3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] > '3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] > '3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '5' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= '5' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '1' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= '1' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [Isue2424Table]


BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Isue2424Table]
(
	[Id]       Int           NOT NULL,
	[StrValue] NVarChar(255)     NULL
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb
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
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 <= Iif([i].[StrValue] > '4', 1, Iif([i].[StrValue] = '4', 0, -1))

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	Iif([i].[StrValue] > '4', 1, Iif([i].[StrValue] = '4', 0, -1)) >= 0

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 >= Iif([i].[StrValue] > '2', 1, Iif([i].[StrValue] = '2', 0, -1))

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	Iif([i].[StrValue] > '2', 1, Iif([i].[StrValue] = '2', 0, -1)) <= 0

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 < Iif([i].[StrValue] > '3', 1, Iif([i].[StrValue] = '3', 0, -1))

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	Iif([i].[StrValue] > '3', 1, Iif([i].[StrValue] = '3', 0, -1)) > 0

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 > Iif([i].[StrValue] > '3', 1, Iif([i].[StrValue] = '3', 0, -1))

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	Iif([i].[StrValue] > '3', 1, Iif([i].[StrValue] = '3', 0, -1)) < 0

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 = Iif([i].[StrValue] > '3', 1, Iif([i].[StrValue] = '3', 0, -1))

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	Iif([i].[StrValue] > '3', 1, Iif([i].[StrValue] = '3', 0, -1)) = 0

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 >= Iif([i].[StrValue] > '2', 1, Iif([i].[StrValue] = '2', 0, -1))

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	Iif([i].[StrValue] > '2', 1, Iif([i].[StrValue] = '2', 0, -1)) <= 0

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 <= Iif([i].[StrValue] > '4', 1, Iif([i].[StrValue] = '4', 0, -1))

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	Iif([i].[StrValue] > '4', 1, Iif([i].[StrValue] = '4', 0, -1)) >= 0

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 > Iif([i].[StrValue] > '3', 1, Iif([i].[StrValue] = '3', 0, -1))

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	Iif([i].[StrValue] > '3', 1, Iif([i].[StrValue] = '3', 0, -1)) < 0

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 < Iif([i].[StrValue] > '3', 1, Iif([i].[StrValue] = '3', 0, -1))

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	Iif([i].[StrValue] > '3', 1, Iif([i].[StrValue] = '3', 0, -1)) > 0

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 <= Iif([i].[StrValue] > '5', 1, Iif([i].[StrValue] = '5', 0, -1))

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	Iif([i].[StrValue] > '5', 1, Iif([i].[StrValue] = '5', 0, -1)) >= 0

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 >= Iif([i].[StrValue] > '1', 1, Iif([i].[StrValue] = '1', 0, -1))

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	Iif([i].[StrValue] > '1', 1, Iif([i].[StrValue] = '1', 0, -1)) <= 0

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Isue2424Table]


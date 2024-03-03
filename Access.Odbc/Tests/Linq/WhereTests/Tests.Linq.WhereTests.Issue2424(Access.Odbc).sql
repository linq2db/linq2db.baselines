﻿BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Isue2424Table]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [Isue2424Table]
(
	[Id]       Int           NOT NULL,
	[StrValue] NVarChar(255)     NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @StrValue NVarChar(1) -- String
SET     @StrValue = '1'

INSERT INTO [Isue2424Table]
(
	[Id],
	[StrValue]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @StrValue NVarChar(1) -- String
SET     @StrValue = '3'

INSERT INTO [Isue2424Table]
(
	[Id],
	[StrValue]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @StrValue NVarChar(1) -- String
SET     @StrValue = '5'

INSERT INTO [Isue2424Table]
(
	[Id],
	[StrValue]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 <= IIF([i].[StrValue] > '4', 1, IIF(([i].[StrValue] = '4'), 0, -1))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > '4', 1, IIF(([i].[StrValue] = '4'), 0, -1)) >= 0

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 >= IIF([i].[StrValue] > '2', 1, IIF(([i].[StrValue] = '2'), 0, -1))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > '2', 1, IIF(([i].[StrValue] = '2'), 0, -1)) <= 0

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 < IIF([i].[StrValue] > '3', 1, IIF(([i].[StrValue] = '3'), 0, -1))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > '3', 1, IIF(([i].[StrValue] = '3'), 0, -1)) > 0

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 > IIF([i].[StrValue] > '3', 1, IIF(([i].[StrValue] = '3'), 0, -1))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > '3', 1, IIF(([i].[StrValue] = '3'), 0, -1)) < 0

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 = IIF([i].[StrValue] > '3', 1, IIF(([i].[StrValue] = '3'), 0, -1))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > '3', 1, IIF(([i].[StrValue] = '3'), 0, -1)) = 0

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 >= IIF([i].[StrValue] > '2', 1, IIF(([i].[StrValue] = '2'), 0, -1))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > '2', 1, IIF(([i].[StrValue] = '2'), 0, -1)) <= 0

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 <= IIF([i].[StrValue] > '4', 1, IIF(([i].[StrValue] = '4'), 0, -1))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > '4', 1, IIF(([i].[StrValue] = '4'), 0, -1)) >= 0

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 > IIF([i].[StrValue] > '3', 1, IIF(([i].[StrValue] = '3'), 0, -1))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > '3', 1, IIF(([i].[StrValue] = '3'), 0, -1)) < 0

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 < IIF([i].[StrValue] > '3', 1, IIF(([i].[StrValue] = '3'), 0, -1))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > '3', 1, IIF(([i].[StrValue] = '3'), 0, -1)) > 0

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 <= IIF([i].[StrValue] > '5', 1, IIF(([i].[StrValue] = '5'), 0, -1))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > '5', 1, IIF(([i].[StrValue] = '5'), 0, -1)) >= 0

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 >= IIF([i].[StrValue] > '1', 1, IIF(([i].[StrValue] = '1'), 0, -1))

BeforeExecute
-- Access.Odbc AccessODBC

SELECT TOP 2
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > '1', 1, IIF(([i].[StrValue] = '1'), 0, -1)) <= 0

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [Isue2424Table]


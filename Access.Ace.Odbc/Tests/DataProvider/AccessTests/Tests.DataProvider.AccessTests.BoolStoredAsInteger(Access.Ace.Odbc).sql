-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @ByteFlag TinyInt -- Byte
SET     @ByteFlag = True
DECLARE @Int16Flag SmallInt -- Int16
SET     @Int16Flag = True
DECLARE @Int32Flag Int -- Int32
SET     @Int32Flag = True

INSERT INTO [BoolAsIntegerTable]
(
	[Id],
	[ByteFlag],
	[Int16Flag],
	[Int32Flag]
)
VALUES
(
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @ByteFlag TinyInt -- Byte
SET     @ByteFlag = False
DECLARE @Int16Flag SmallInt -- Int16
SET     @Int16Flag = False
DECLARE @Int32Flag Int -- Int32
SET     @Int32Flag = False

INSERT INTO [BoolAsIntegerTable]
(
	[Id],
	[ByteFlag],
	[Int16Flag],
	[Int32Flag]
)
VALUES
(
	?,
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[ByteFlag],
	[t1].[Int16Flag],
	[t1].[Int32Flag]
FROM
	[BoolAsIntegerTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[ByteFlag],
	[t1].[Int16Flag],
	[t1].[Int32Flag]
FROM
	[BoolAsIntegerTable] [t1]
ORDER BY
	[t1].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @flag TinyInt -- Byte
SET     @flag = True

SELECT
	[r].[Id]
FROM
	[BoolAsIntegerTable] [r]
WHERE
	[r].[ByteFlag] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @flag SmallInt -- Int16
SET     @flag = True

SELECT
	[r].[Id]
FROM
	[BoolAsIntegerTable] [r]
WHERE
	[r].[Int16Flag] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @flag Int -- Int32
SET     @flag = True

SELECT
	[r].[Id]
FROM
	[BoolAsIntegerTable] [r]
WHERE
	[r].[Int32Flag] = ?


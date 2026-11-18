-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Grace VarChar -- AnsiString
SET     @Grace = 4567
DECLARE @Required VarChar -- AnsiString
SET     @Required = 4567

INSERT INTO [OptionalDurationRow]
(
	[Id],
	[Grace],
	[Required]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Grace VarChar -- AnsiString
SET     @Grace = NULL
DECLARE @Required VarChar -- AnsiString
SET     @Required = 4567

INSERT INTO [OptionalDurationRow]
(
	[Id],
	[Grace],
	[Required]
)
VALUES
(
	?,
	?,
	?
)

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Grace],
	[t1].[Required]
FROM
	[OptionalDurationRow] [t1]
ORDER BY
	[t1].[Id]

-- Access.Ace.Odbc AccessODBC
DECLARE @Grace VarChar -- AnsiString
SET     @Grace = NULL

UPDATE
	[OptionalDurationRow] [r]
SET
	[r].[Grace] = ?
WHERE
	[r].[Id] = 1

-- Access.Ace.Odbc AccessODBC
DECLARE @Grace VarChar -- AnsiString
SET     @Grace = 4567

UPDATE
	[OptionalDurationRow] [r]
SET
	[r].[Grace] = ?
WHERE
	[r].[Id] = 2

-- Access.Ace.Odbc AccessODBC
SELECT
	[t1].[Id],
	[t1].[Grace],
	[t1].[Required]
FROM
	[OptionalDurationRow] [t1]
ORDER BY
	[t1].[Id]


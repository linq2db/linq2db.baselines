-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Key Integer -- Int32
SET     @Key = 10

INSERT INTO [DuRow]
(
	[Id],
	[Key]
)
VALUES
(
	@Id,
	@Key
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Key Integer -- Int32
SET     @Key = 20

INSERT INTO [DuRow]
(
	[Id],
	[Key]
)
VALUES
(
	@Id,
	@Key
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @Key Integer -- Int32
SET     @Key = 10

SELECT
	[x].[Id],
	[x].[Key]
FROM
	[DuRow] [x]
WHERE
	[x].[Key] = @Key


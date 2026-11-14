-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Key  -- Int32
SET     @Key = 7

INSERT INTO [PrivateDuRow]
(
	[Id],
	[Key]
)
VALUES
(
	@Id,
	@Key
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[x].[Key]
FROM
	[PrivateDuRow] [x]
ORDER BY
	[x].[Id]


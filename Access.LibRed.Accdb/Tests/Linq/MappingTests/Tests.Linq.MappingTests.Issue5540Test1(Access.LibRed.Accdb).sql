-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Items NVarChar(3) -- String
SET     @Items = 'A;B'

INSERT INTO [Issue5540]
(
	[Id],
	[Items]
)
VALUES
(
	@Id,
	@Items
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Items]
FROM
	[Issue5540] [t1]


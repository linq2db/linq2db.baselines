-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Elapsed  -- Int64
SET     @Elapsed = 5400

INSERT INTO [DynamicDurationRow]
(
	[Id],
	[Elapsed]
)
VALUES
(
	@Id,
	@Elapsed
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[Id],
	[t1].[Elapsed]
FROM
	[DynamicDurationRow] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	[r].[Elapsed] / 60
FROM
	[DynamicDurationRow] [r]


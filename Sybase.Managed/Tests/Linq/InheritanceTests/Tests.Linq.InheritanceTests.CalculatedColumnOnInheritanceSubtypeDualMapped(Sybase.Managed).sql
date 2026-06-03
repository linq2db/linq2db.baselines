-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @Stored UniVarChar(4) -- String
SET     @Stored = 'John'

INSERT INTO [CalcSubtypeDual]
(
	[Id],
	[Type],
	[Stored]
)
VALUES
(
	@Id,
	@Type,
	@Stored
)

-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Type],
	[t1].[Id],
	[t1].[Stored],
	Coalesce([t1].[Stored], '') + '!'
FROM
	[CalcSubtypeDual] [t1]


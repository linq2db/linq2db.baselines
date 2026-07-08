-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Type Int -- Int32
SET     @Type = 1
DECLARE @Stored NVarChar(4000) -- String
SET     @Stored = N'John'

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

-- SqlServer.2008

SELECT TOP (2)
	[t1].[Type],
	[t1].[Id],
	[t1].[Stored],
	Coalesce([t1].[Stored], N'') + N'!'
FROM
	[CalcSubtypeDual] [t1]


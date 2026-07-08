-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Type Int -- Int32
SET     @Type = 1
DECLARE @Name_First NVarChar(4000) -- String
SET     @Name_First = N'John'
DECLARE @Name_Second NVarChar(4000) -- String
SET     @Name_Second = N'Doe'

INSERT INTO [CalcSubtypeTable]
(
	[Id],
	[Type],
	[Name_First],
	[Name_Second]
)
VALUES
(
	@Id,
	@Type,
	@Name_First,
	@Name_Second
)

-- SqlServer.Contained.MS SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[Type],
	[t1].[Name_First],
	[t1].[Name_Second],
	Coalesce([t1].[Name_First], N'') + N' ' + Coalesce([t1].[Name_Second], N'')
FROM
	[CalcSubtypeTable] [t1]


-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Type Int -- Int32
SET     @Type = 1
DECLARE @Name_First NVarChar(4) -- String
SET     @Name_First = 'John'
DECLARE @Name_Second NVarChar(3) -- String
SET     @Name_Second = 'Doe'

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

-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Type] as [Type_1],
	[t1].[Name_First] as [First_1],
	[t1].[Name_Second] as [Second_1],
	Coalesce([t1].[Name_First], '') + ' ' + Coalesce([t1].[Name_Second], '') as [FullName]
FROM
	[CalcSubtypeTable] [t1]


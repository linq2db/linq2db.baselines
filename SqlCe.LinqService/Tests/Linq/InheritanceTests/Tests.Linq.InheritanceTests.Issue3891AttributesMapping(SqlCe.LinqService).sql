BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Type Int -- Int32
SET     @Type = 1
DECLARE @ChildId Int -- Int32
SET     @ChildId = 2
DECLARE @Name_First NVarChar(5) -- String
SET     @Name_First = 'First'
DECLARE @Name_Second NVarChar(6) -- String
SET     @Name_Second = 'Second'

INSERT INTO [Base]
(
	[Id],
	[Type],
	[Test_ChildId],
	[Name_First],
	[Name_Second]
)
VALUES
(
	@Id,
	@Type,
	@ChildId,
	@Name_First,
	@Name_Second
)

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[Type] as [Type_1],
	[t1].[Id],
	[t1].[Test_ChildId] as [ChildId],
	[t1].[Name_First] as [First_1],
	[t1].[Name_Second] as [Second_1]
FROM
	[Base] [t1]

BeforeExecute
-- SqlCe
DECLARE @Type Int -- Int32
SET     @Type = 1
DECLARE @ChildId Int -- Int32
SET     @ChildId = 2
DECLARE @Name_First NVarChar(6) -- String
SET     @Name_First = 'First1'
DECLARE @Name_Second NVarChar(6) -- String
SET     @Name_Second = 'Second'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[Base]
SET
	[Type] = @Type,
	[Test_ChildId] = @ChildId,
	[Name_First] = @Name_First,
	[Name_Second] = @Name_Second
WHERE
	[Base].[Id] = @Id

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[Type] as [Type_1],
	[t1].[Id],
	[t1].[Test_ChildId] as [ChildId],
	[t1].[Name_First] as [First_1],
	[t1].[Name_Second] as [Second_1]
FROM
	[Base] [t1]


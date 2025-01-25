BeforeExecute
-- SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Type Int -- Int32
SET     @Type = 1
DECLARE @ChildId Int -- Int32
SET     @ChildId = 2
DECLARE @Name_First NVarChar(4000) -- String
SET     @Name_First = N'First'
DECLARE @Name_Second NVarChar(4000) -- String
SET     @Name_Second = N'Second'

INSERT INTO [Base2]
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
-- SqlServer.2017

SELECT TOP (2)
	[t1].[Type],
	[t1].[Id],
	[t1].[Test_ChildId],
	[t1].[Name_First],
	[t1].[Name_Second]
FROM
	[Base2] [t1]

BeforeExecute
-- SqlServer.2017
DECLARE @Type Int -- Int32
SET     @Type = 1
DECLARE @ChildId Int -- Int32
SET     @ChildId = 2
DECLARE @Name_First NVarChar(4000) -- String
SET     @Name_First = N'First1'
DECLARE @Name_Second NVarChar(4000) -- String
SET     @Name_Second = N'Second'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[Base2]
SET
	[Type] = @Type,
	[Test_ChildId] = @ChildId,
	[Name_First] = @Name_First,
	[Name_Second] = @Name_Second
WHERE
	[Base2].[Id] = @Id

BeforeExecute
-- SqlServer.2017

SELECT TOP (2)
	[t1].[Type],
	[t1].[Id],
	[t1].[Test_ChildId],
	[t1].[Name_First],
	[t1].[Name_Second]
FROM
	[Base2] [t1]


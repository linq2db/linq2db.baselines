﻿BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @ChildId Integer -- Int32
SET     @ChildId = 2
DECLARE @Name_First UniVarChar(5) -- String
SET     @Name_First = 'First'
DECLARE @Name_Second UniVarChar(6) -- String
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
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Type],
	[t1].[Id],
	[t1].[Test_ChildId],
	[t1].[Name_First],
	[t1].[Name_Second]
FROM
	[Base] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @ChildId Integer -- Int32
SET     @ChildId = 2
DECLARE @Name_First UniVarChar(6) -- String
SET     @Name_First = 'First1'
DECLARE @Name_Second UniVarChar(6) -- String
SET     @Name_Second = 'Second'
DECLARE @Id Integer -- Int32
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
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Type],
	[t1].[Id],
	[t1].[Test_ChildId],
	[t1].[Name_First],
	[t1].[Name_Second]
FROM
	[Base] [t1]


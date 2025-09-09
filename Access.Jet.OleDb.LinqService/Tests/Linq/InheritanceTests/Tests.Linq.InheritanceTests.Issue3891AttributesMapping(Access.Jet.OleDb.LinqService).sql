BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @ChildId Integer -- Int32
SET     @ChildId = 2
DECLARE @Name_First VarWChar(5) -- String
SET     @Name_First = 'First'
DECLARE @Name_Second VarWChar(6) -- String
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
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT TOP 2
	[t1].[Type],
	[t1].[Id],
	[t1].[Test_ChildId],
	[t1].[Name_First],
	[t1].[Name_Second]
FROM
	[Base] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @Type Integer -- Int32
SET     @Type = 1
DECLARE @ChildId Integer -- Int32
SET     @ChildId = 2
DECLARE @Name_First VarWChar(6) -- String
SET     @Name_First = 'First1'
DECLARE @Name_Second VarWChar(6) -- String
SET     @Name_Second = 'Second'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[Base] [t1]
SET
	[t1].[Type] = @Type,
	[t1].[Test_ChildId] = @ChildId,
	[t1].[Name_First] = @Name_First,
	[t1].[Name_Second] = @Name_Second
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT TOP 2
	[t1].[Type],
	[t1].[Id],
	[t1].[Test_ChildId],
	[t1].[Name_First],
	[t1].[Name_Second]
FROM
	[Base] [t1]


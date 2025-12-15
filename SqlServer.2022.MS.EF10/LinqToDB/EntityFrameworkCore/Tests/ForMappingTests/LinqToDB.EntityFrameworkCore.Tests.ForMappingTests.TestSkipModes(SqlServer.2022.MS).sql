Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32)

SET IMPLICIT_TRANSACTIONS OFF;
SET NOCOUNT ON;
INSERT INTO [SkipModes] ([Id], [InsertOnly])
VALUES (@p0, @p1);


-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @InsertOnly Int -- Int32
SET     @InsertOnly = 2

INSERT INTO [SkipModes]
(
	[Id],
	[InsertOnly]
)
VALUES
(
	@Id,
	@InsertOnly
)



-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[InsertOnly],
	[t1].[UpdateOnly],
	[t1].[ReadOnly]
FROM
	[SkipModes] [t1]
ORDER BY
	[t1].[Id]



Parameters:
@p1='?' (DbType = Int32), @p0='?' (DbType = Int32)

SET IMPLICIT_TRANSACTIONS OFF;
SET NOCOUNT ON;
UPDATE [SkipModes] SET [UpdateOnly] = @p0
OUTPUT 1
WHERE [Id] = @p1;


-- SqlServer.2022
DECLARE @UpdateOnly Int -- Int32
SET     @UpdateOnly = 12
DECLARE @Id Int -- Int32
SET     @Id = 2

UPDATE
	[SkipModes]
SET
	[UpdateOnly] = @UpdateOnly
WHERE
	[SkipModes].[Id] = @Id



-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[InsertOnly],
	[t1].[UpdateOnly],
	[t1].[ReadOnly]
FROM
	[SkipModes] [t1]
ORDER BY
	[t1].[Id]




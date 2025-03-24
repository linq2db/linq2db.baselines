Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32)

SET NOCOUNT ON;
INSERT INTO [SkipModes] ([Id], [InsertOnly])
VALUES (@p0, @p1);


-- SqlServer.2016
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



-- SqlServer.2016

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

SET NOCOUNT ON;
UPDATE [SkipModes] SET [UpdateOnly] = @p0
WHERE [Id] = @p1;
SELECT @@ROWCOUNT;


-- SqlServer.2016
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



-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[InsertOnly],
	[t1].[UpdateOnly],
	[t1].[ReadOnly]
FROM
	[SkipModes] [t1]
ORDER BY
	[t1].[Id]




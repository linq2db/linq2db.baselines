-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @EntityType NVarChar(6) -- String
SET     @EntityType = 'Type01'
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'A-Entity'
DECLARE @CreatedDate VarChar(23) -- AnsiString
SET     @CreatedDate = '2020-02-29 00:00:00.000'
DECLARE @Property01 NVarChar(5) -- String
SET     @Property01 = 'Test1'

INSERT INTO [Issue5274Entity]
(
	[EntityType],
	[Name],
	[CreatedDate],
	[Property01]
)
VALUES
(
	@EntityType,
	@Name,
	@CreatedDate,
	@Property01
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @EntityType NVarChar(6) -- String
SET     @EntityType = 'Type05'
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'B-Entity'
DECLARE @CreatedDate VarChar(23) -- AnsiString
SET     @CreatedDate = '2020-03-05 00:00:00.000'
DECLARE @Property05 NVarChar(5) -- String
SET     @Property05 = 'Test5'

INSERT INTO [Issue5274Entity]
(
	[EntityType],
	[Name],
	[CreatedDate],
	[Property05]
)
VALUES
(
	@EntityType,
	@Name,
	@CreatedDate,
	@Property05
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @EntityType NVarChar(6) -- String
SET     @EntityType = 'Type10'
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'C-Entity'
DECLARE @CreatedDate VarChar(23) -- AnsiString
SET     @CreatedDate = '2020-03-10 00:00:00.000'
DECLARE @Property10 NVarChar(6) -- String
SET     @Property10 = 'Test10'

INSERT INTO [Issue5274Entity]
(
	[EntityType],
	[Name],
	[CreatedDate],
	[Property10]
)
VALUES
(
	@EntityType,
	@Name,
	@CreatedDate,
	@Property10
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @EntityType NVarChar(6) -- String
SET     @EntityType = 'Type17'
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'D-Entity'
DECLARE @CreatedDate VarChar(23) -- AnsiString
SET     @CreatedDate = '2020-03-17 00:00:00.000'
DECLARE @Property17 NVarChar(6) -- String
SET     @Property17 = 'Test17'

INSERT INTO [Issue5274Entity]
(
	[EntityType],
	[Name],
	[CreatedDate],
	[Property17]
)
VALUES
(
	@EntityType,
	@Name,
	@CreatedDate,
	@Property17
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @baseDate VarChar(23) -- AnsiString
SET     @baseDate = '2020-02-29 00:00:00.000'

SELECT
	[e].[EntityType],
	[e].[Id],
	[e].[Name],
	[e].[CreatedDate],
	[e].[Property01],
	[e].[Property02],
	[e].[Property03],
	[e].[Property04],
	[e].[Property05],
	[e].[Property06],
	[e].[Property07],
	[e].[Property08],
	[e].[Property09],
	[e].[Property10],
	[e].[Property11],
	[e].[Property12],
	[e].[Property13],
	[e].[Property14],
	[e].[Property15],
	[e].[Property16],
	[e].[Property17]
FROM
	[Issue5274Entity] [e]
WHERE
	[e].[EntityType] = 'Type01' AND [e].[Name] LIKE 'A%' ESCAPE '~' OR
	[e].[EntityType] = 'Type05' AND strftime('%Y-%m-%d %H:%M:%f', [e].[CreatedDate]) > strftime('%Y-%m-%d %H:%M:%f', @baseDate) OR
	[e].[EntityType] = 'Type10' AND [e].[Name] LIKE '%Entity%' ESCAPE '~' OR
	[e].[EntityType] = 'Type17' AND [e].[Id] > 0


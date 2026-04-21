-- SqlCe
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @updateTime DateTime
SET     @updateTime = '2026-01-01 12:00:00'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest]
SET
	[Name] = @Name,
	[Version] = @Version,
	[UpdatedAt] = @updateTime,
	[UpdatedBy] = 'system'
WHERE
	[UpsertTest].[Id] = @Id

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'first'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @insertTime DateTime
SET     @insertTime = '2026-01-01 10:00:00'

INSERT INTO [UpsertTest]
(
	[Id],
	[Name],
	[Version],
	[CreatedAt],
	[CreatedBy]
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@insertTime,
	'system'
)

-- SqlCe

SELECT TOP (2)
	[r].[Id],
	[r].[Name],
	[r].[Version] as [Version_1],
	[r].[CreatedAt],
	[r].[CreatedBy],
	[r].[UpdatedAt],
	[r].[UpdatedBy]
FROM
	[UpsertTest] [r]
WHERE
	[r].[Id] = 1

-- SqlCe
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'second'
DECLARE @Version Int -- Int32
SET     @Version = 2
DECLARE @updateTime DateTime
SET     @updateTime = '2026-01-01 12:00:00'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest]
SET
	[Name] = @Name,
	[Version] = @Version,
	[UpdatedAt] = @updateTime,
	[UpdatedBy] = 'system'
WHERE
	[UpsertTest].[Id] = @Id

-- SqlCe

SELECT TOP (2)
	[r].[Id],
	[r].[Name],
	[r].[Version] as [Version_1],
	[r].[CreatedAt],
	[r].[CreatedBy],
	[r].[UpdatedAt],
	[r].[UpdatedBy]
FROM
	[UpsertTest] [r]
WHERE
	[r].[Id] = 1


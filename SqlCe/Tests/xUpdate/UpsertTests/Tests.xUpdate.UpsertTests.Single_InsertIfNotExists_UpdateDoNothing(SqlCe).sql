-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1

SELECT
	1 as [c1]
FROM
	[UpsertTest] [t1]
WHERE
	[t1].[Id] = @Id

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


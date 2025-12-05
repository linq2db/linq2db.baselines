-- SqlCe
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[test_insert_or_replace]
SET
	[name] = @Name,
	[updated_by] = @UpdatedBy
WHERE
	[test_insert_or_replace].[id] = @Id

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test1'
DECLARE @CreatedBy NVarChar(10) -- String
SET     @CreatedBy = 'TEST_USER3'

INSERT INTO [test_insert_or_replace]
(
	[id],
	[name],
	[created_by]
)
VALUES
(
	@Id,
	@Name,
	@CreatedBy
)

-- SqlCe

SELECT TOP (2)
	[t1].[id] as [Id],
	[t1].[name] as [Name],
	[t1].[created_by] as [CreatedBy],
	[t1].[updated_by] as [UpdatedBy]
FROM
	[test_insert_or_replace] [t1]

-- SqlCe
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Test2'
DECLARE @UpdatedBy NVarChar(10) -- String
SET     @UpdatedBy = 'TEST_USER3'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[test_insert_or_replace]
SET
	[name] = @Name,
	[updated_by] = @UpdatedBy
WHERE
	[test_insert_or_replace].[id] = @Id

-- SqlCe

SELECT TOP (2)
	[t1].[id] as [Id],
	[t1].[name] as [Name],
	[t1].[created_by] as [CreatedBy],
	[t1].[updated_by] as [UpdatedBy]
FROM
	[test_insert_or_replace] [t1]


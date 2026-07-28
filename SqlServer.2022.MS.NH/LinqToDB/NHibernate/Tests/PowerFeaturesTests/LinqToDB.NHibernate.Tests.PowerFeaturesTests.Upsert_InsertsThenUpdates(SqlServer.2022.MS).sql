-- SqlServer.2008
DELETE [o]
FROM
	[l2dbnh_orgunits] [o]
WHERE
	[o].[id] = 900


-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 900
DECLARE @ParentId Int -- Int32
SET     @ParentId = NULL
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'First'

MERGE INTO [l2dbnh_orgunits] [t1]
USING (SELECT @Id AS [id]) [s] ON
(
	[t1].[id] = [s].[id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[parentid] = @ParentId,
		[name] = @Name
WHEN NOT MATCHED THEN
	INSERT
	(
		[id],
		[parentid],
		[name]
	)
	VALUES
	(
		@Id,
		@ParentId,
		@Name
	);


-- SqlServer.2008
SELECT TOP (2)
	[o].[id],
	[o].[parentid],
	[o].[name]
FROM
	[l2dbnh_orgunits] [o]
WHERE
	[o].[id] = 900


-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 900
DECLARE @ParentId Int -- Int32
SET     @ParentId = NULL
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Second'

MERGE INTO [l2dbnh_orgunits] [t1]
USING (SELECT @Id AS [id]) [s] ON
(
	[t1].[id] = [s].[id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[parentid] = @ParentId,
		[name] = @Name
WHEN NOT MATCHED THEN
	INSERT
	(
		[id],
		[parentid],
		[name]
	)
	VALUES
	(
		@Id,
		@ParentId,
		@Name
	);


-- SqlServer.2008
SELECT TOP (2)
	[o].[id],
	[o].[parentid],
	[o].[name]
FROM
	[l2dbnh_orgunits] [o]
WHERE
	[o].[id] = 900


-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 900
DECLARE @ParentId Int -- Int32
SET     @ParentId = NULL

MERGE INTO [l2dbnh_orgunits] [t1]
USING (SELECT @Id AS [id]) [s] ON
(
	[t1].[id] = [s].[id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[parentid] = @ParentId
WHEN NOT MATCHED THEN
	INSERT
	(
		[id],
		[parentid],
		[name]
	)
	VALUES
	(
		@Id,
		@ParentId,
		N'Inserted'
	);


-- SqlServer.2008
SELECT TOP (2)
	[o].[id],
	[o].[parentid],
	[o].[name]
FROM
	[l2dbnh_orgunits] [o]
WHERE
	[o].[id] = 900


-- SqlServer.2008
DELETE [o]
FROM
	[l2dbnh_orgunits] [o]
WHERE
	[o].[id] = 900



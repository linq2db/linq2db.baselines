-- SqlServer.2008
DELETE [o]
FROM
	[l2dbnh_orgunits] [o]
WHERE
	[o].[id] = 900


-- SqlServer.2008
MERGE INTO [l2dbnh_orgunits] [t1]
USING (SELECT 900 AS [id]) [s] ON
(
	[t1].[id] = [s].[id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[name] = N'Updated'
WHEN NOT MATCHED THEN
	INSERT
	(
		[id],
		[parentid],
		[name]
	)
	VALUES
	(
		900,
		NULL,
		N'First'
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
MERGE INTO [l2dbnh_orgunits] [t1]
USING (SELECT 900 AS [id]) [s] ON
(
	[t1].[id] = [s].[id]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[name] = N'Updated'
WHEN NOT MATCHED THEN
	INSERT
	(
		[id],
		[parentid],
		[name]
	)
	VALUES
	(
		900,
		NULL,
		N'Second'
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



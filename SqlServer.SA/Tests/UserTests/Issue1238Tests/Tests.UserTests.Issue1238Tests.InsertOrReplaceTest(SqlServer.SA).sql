BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.SA SqlServer.2019

DELETE [t1]
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar(4000) -- String
SET     @Key2 = NULL
DECLARE @Data Int -- Int32
SET     @Data = 1

MERGE INTO [InheritanceParent] [t1]
USING (SELECT @Key1 AS [InheritanceParentId], @Key2 AS [Name]) [s] ON
(
	[t1].[InheritanceParentId] = [s].[InheritanceParentId] AND
	([t1].[Name] IS NULL AND [s].[Name] IS NULL OR [t1].[Name] = [s].[Name])
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[TypeDiscriminator] = @Data
WHEN NOT MATCHED THEN
	INSERT
	(
		[InheritanceParentId],
		[Name],
		[TypeDiscriminator]
	)
	VALUES
	(
		@Key1,
		@Key2,
		@Data
	);

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar(4000) -- String
SET     @Key2 = NULL
DECLARE @Data Int -- Int32
SET     @Data = 1

MERGE INTO [InheritanceParent] [t1]
USING (SELECT @Key1 AS [InheritanceParentId], @Key2 AS [Name]) [s] ON
(
	[t1].[InheritanceParentId] = [s].[InheritanceParentId] AND
	([t1].[Name] IS NULL AND [s].[Name] IS NULL OR [t1].[Name] = [s].[Name])
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[TypeDiscriminator] = @Data
WHEN NOT MATCHED THEN
	INSERT
	(
		[InheritanceParentId],
		[Name],
		[TypeDiscriminator]
	)
	VALUES
	(
		@Key1,
		@Key2,
		@Data
	);

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
DisposeTransaction

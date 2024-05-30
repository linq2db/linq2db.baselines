BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlServer.2005
DECLARE @Data Int -- Int32
SET     @Data = 1
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar(4000) -- String
SET     @Key2 = NULL

UPDATE
	[InheritanceParent]
SET
	[TypeDiscriminator] = @Data
FROM
	[InheritanceParent] [t1]
WHERE
	[t1].[InheritanceParentId] = @Key1 AND
	([t1].[Name] IS NULL OR [t1].[Name] = @Key2)

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [InheritanceParent]
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
	)
END

BeforeExecute
-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlServer.2005
DECLARE @Data Int -- Int32
SET     @Data = 1
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar(4000) -- String
SET     @Key2 = NULL

UPDATE
	[InheritanceParent]
SET
	[TypeDiscriminator] = @Data
FROM
	[InheritanceParent] [t1]
WHERE
	[t1].[InheritanceParentId] = @Key1 AND
	([t1].[Name] IS NULL OR [t1].[Name] = @Key2)

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [InheritanceParent]
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
	)
END

BeforeExecute
-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
DisposeTransaction

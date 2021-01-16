BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlServer.2005
DECLARE @Data_1 Int -- Int32
SET     @Data_1 = 1
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar(4000) -- String
SET     @Key2 = NULL

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[TypeDiscriminator] = @Data_1
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
		@Data_1
	)
END

COMMIT

BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlServer.2005
DECLARE @Data_1 Int -- Int32
SET     @Data_1 = 1
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar(4000) -- String
SET     @Key2 = NULL

BEGIN TRAN

UPDATE
	[t1]
SET
	[t1].[TypeDiscriminator] = @Data_1
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
		@Data_1
	)
END

COMMIT

BeforeExecute
-- SqlServer.2005

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]


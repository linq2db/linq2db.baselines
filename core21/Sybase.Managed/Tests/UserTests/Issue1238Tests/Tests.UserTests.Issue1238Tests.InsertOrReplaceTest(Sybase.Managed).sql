BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [InheritanceParent]
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Data_2 Integer -- Int32
SET     @Data_2 = 1
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143
DECLARE @Key2 UniVarChar -- String
SET     @Key2 = NULL
DECLARE @Data_1 Integer -- Int32
SET     @Data_1 = 1

BEGIN TRAN

UPDATE
	[InheritanceParent]
SET
	[t1].[TypeDiscriminator] = @Data_2
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
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Data_2 Integer -- Int32
SET     @Data_2 = 1
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143
DECLARE @Key2 UniVarChar -- String
SET     @Key2 = NULL
DECLARE @Data_1 Integer -- Int32
SET     @Data_1 = 1

BEGIN TRAN

UPDATE
	[InheritanceParent]
SET
	[t1].[TypeDiscriminator] = @Data_2
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
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]


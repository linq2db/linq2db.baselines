BeforeExecute
BeginTransaction
BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [InheritanceParent]
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Data Integer -- Int32
SET     @Data = 1
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143
DECLARE @Key2 UniVarChar -- String
SET     @Key2 = NULL
DECLARE @Data_1 Integer -- Int32
SET     @Data_1 = 1

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
		@Data_1
	)
END

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Data Integer -- Int32
SET     @Data = 1
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143
DECLARE @Key2 UniVarChar -- String
SET     @Key2 = NULL
DECLARE @Data_1 Integer -- Int32
SET     @Data_1 = 1

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
		@Data_1
	)
END

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
DisposeTransaction

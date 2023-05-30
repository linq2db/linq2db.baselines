BeforeExecute
BeginTransaction
BeforeExecute
-- SqlCe

DELETE FROM
	[InheritanceParent]

BeforeExecute
-- SqlCe
DECLARE @Data Int -- Int32
SET     @Data = 1
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent]
SET
	[InheritanceParent].[TypeDiscriminator] = @Data
WHERE
	[InheritanceParent].[InheritanceParentId] = @Key1 AND
	[InheritanceParent].[Name] IS NULL

BeforeExecute
-- SqlCe
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar -- String
SET     @Key2 = NULL
DECLARE @Data Int -- Int32
SET     @Data = 1

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

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlCe
DECLARE @Data Int -- Int32
SET     @Data = 1
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent]
SET
	[InheritanceParent].[TypeDiscriminator] = @Data
WHERE
	[InheritanceParent].[InheritanceParentId] = @Key1 AND
	[InheritanceParent].[Name] IS NULL

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
DisposeTransaction

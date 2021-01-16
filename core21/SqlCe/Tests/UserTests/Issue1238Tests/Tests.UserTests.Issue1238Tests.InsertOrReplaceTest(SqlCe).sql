BeforeExecute
-- SqlCe

DELETE FROM
	[InheritanceParent]

BeforeExecute
-- SqlCe
DECLARE @Data_1 Int -- Int32
SET     @Data_1 = 1
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent]
SET
	[InheritanceParent].[TypeDiscriminator] = @Data_1
WHERE
	[InheritanceParent].[InheritanceParentId] = @Key1 AND
	[InheritanceParent].[Name] IS NULL

BeforeExecute
-- SqlCe
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar -- String
SET     @Key2 = NULL
DECLARE @Data_1 Int -- Int32
SET     @Data_1 = 1

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

BeforeExecute
-- SqlCe
DECLARE @Data_1 Int -- Int32
SET     @Data_1 = 1
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent]
SET
	[InheritanceParent].[TypeDiscriminator] = @Data_1
WHERE
	[InheritanceParent].[InheritanceParentId] = @Key1 AND
	[InheritanceParent].[Name] IS NULL


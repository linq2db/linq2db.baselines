-- SqlCe

DELETE FROM
	[InheritanceParent]

-- SqlCe
DECLARE @Data Int -- Int32
SET     @Data = 1
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent]
SET
	[TypeDiscriminator] = @Data
WHERE
	[InheritanceParent].[InheritanceParentId] = @Key1 AND
	[InheritanceParent].[Name] IS NULL

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

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[InheritanceParent] [t1]

-- SqlCe
DECLARE @Data Int -- Int32
SET     @Data = 1
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent]
SET
	[TypeDiscriminator] = @Data
WHERE
	[InheritanceParent].[InheritanceParentId] = @Key1 AND
	[InheritanceParent].[Name] IS NULL

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[InheritanceParent] [t1]


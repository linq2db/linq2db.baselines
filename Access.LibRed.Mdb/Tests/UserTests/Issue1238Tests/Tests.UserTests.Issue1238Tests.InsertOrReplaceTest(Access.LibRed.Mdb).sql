-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DELETE FROM
	[InheritanceParent] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Data  -- Int32
SET     @Data = 1
DECLARE @Key1  -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = @Data
WHERE
	[t1].[InheritanceParentId] = @Key1 AND [t1].[Name] IS NULL

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Key1  -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar -- String
SET     @Key2 = NULL
DECLARE @Data  -- Int32
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Data  -- Int32
SET     @Data = 1
DECLARE @Key1  -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = @Data
WHERE
	[t1].[InheritanceParentId] = @Key1 AND [t1].[Name] IS NULL

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]


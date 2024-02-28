BeforeExecute
BeginTransaction
BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[InheritanceParent]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Data  -- Int32
SET     @Data = 1
DECLARE @Key1  -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent]
SET
	[TypeDiscriminator] = @Data
WHERE
	[InheritanceParent].[InheritanceParentId] = @Key1 AND
	[InheritanceParent].[Name] IS NULL

BeforeExecute
-- SQLite.Classic SQLite
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

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Data  -- Int32
SET     @Data = 1
DECLARE @Key1  -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent]
SET
	[TypeDiscriminator] = @Data
WHERE
	[InheritanceParent].[InheritanceParentId] = @Key1 AND
	[InheritanceParent].[Name] IS NULL

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
DisposeTransaction

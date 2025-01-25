BeforeExecute
BeginTransaction
BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Data Integer -- Int32
SET     @Data = 1
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = @Data
WHERE
	[t1].[InheritanceParentId] = @Key1 AND [t1].[Name] IS NULL

BeforeExecute
-- Access AccessOleDb
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143
DECLARE @Key2 VarWChar -- String
SET     @Key2 = NULL
DECLARE @Data Integer -- Int32
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
-- Access AccessOleDb

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Data Integer -- Int32
SET     @Data = 1
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = @Data
WHERE
	[t1].[InheritanceParentId] = @Key1 AND [t1].[Name] IS NULL

BeforeExecute
-- Access AccessOleDb

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
DisposeTransaction

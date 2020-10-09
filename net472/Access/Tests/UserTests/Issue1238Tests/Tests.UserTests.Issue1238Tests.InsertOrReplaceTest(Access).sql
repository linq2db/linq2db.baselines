BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Data_1 Integer -- Int32
SET     @Data_1 = 1
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = @Data_1
WHERE
	[t1].[InheritanceParentId] = @Key1 AND [t1].[Name] IS NULL

BeforeExecute
-- Access AccessOleDb
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143
DECLARE @Key2 VarWChar -- String
SET     @Key2 = NULL
DECLARE @Data_1 Integer -- Int32
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
-- Access AccessOleDb

SELECT 
	Count(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @Data_1 Integer -- Int32
SET     @Data_1 = 1
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = @Data_1
WHERE
	[t1].[InheritanceParentId] = @Key1 AND [t1].[Name] IS NULL

BeforeExecute
-- Access AccessOleDb

SELECT 
	Count(*)
FROM
	[InheritanceParent] [t1]


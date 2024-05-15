BeforeExecute
BeginTransaction
BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Access AccessOleDb

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = 1
WHERE
	[t1].[InheritanceParentId] = 143 AND [t1].[Name] IS NULL

BeforeExecute
-- Access AccessOleDb

INSERT INTO [InheritanceParent]
(
	[InheritanceParentId],
	[Name],
	[TypeDiscriminator]
)
VALUES
(
	143,
	NULL,
	1
)

BeforeExecute
-- Access AccessOleDb

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- Access AccessOleDb

UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = 1
WHERE
	[t1].[InheritanceParentId] = 143 AND [t1].[Name] IS NULL

BeforeExecute
-- Access AccessOleDb

SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
DisposeTransaction

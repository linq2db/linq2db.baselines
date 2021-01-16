BeforeExecute
-- SqlCe

DELETE FROM
	[InheritanceParent]

BeforeExecute
-- SqlCe

UPDATE
	[InheritanceParent]
SET
	[InheritanceParent].[TypeDiscriminator] = 1
WHERE
	[InheritanceParent].[InheritanceParentId] = 143 AND
	[InheritanceParent].[Name] IS NULL

BeforeExecute
-- SqlCe

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
-- SqlCe

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlCe

UPDATE
	[InheritanceParent]
SET
	[InheritanceParent].[TypeDiscriminator] = 1
WHERE
	[InheritanceParent].[InheritanceParentId] = 143 AND
	[InheritanceParent].[Name] IS NULL

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]


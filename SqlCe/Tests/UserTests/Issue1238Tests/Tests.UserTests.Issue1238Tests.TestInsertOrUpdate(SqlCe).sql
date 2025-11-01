-- SqlCe

DELETE FROM
	[InheritanceParent]

-- SqlCe

UPDATE
	[InheritanceParent]
SET
	[TypeDiscriminator] = 1
WHERE
	[InheritanceParent].[InheritanceParentId] = 143 AND
	[InheritanceParent].[Name] IS NULL

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

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[InheritanceParent] [t1]

-- SqlCe

UPDATE
	[InheritanceParent]
SET
	[TypeDiscriminator] = 1
WHERE
	[InheritanceParent].[InheritanceParentId] = 143 AND
	[InheritanceParent].[Name] IS NULL

-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[InheritanceParent] [t1]


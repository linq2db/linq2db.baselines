-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[InheritanceParent] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = 1
WHERE
	[t1].[InheritanceParentId] = 143 AND [t1].[Name] IS NULL

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[InheritanceParent] [t1]
SET
	[t1].[TypeDiscriminator] = 1
WHERE
	[t1].[InheritanceParentId] = 143 AND [t1].[Name] IS NULL

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[InheritanceParent] [t1]


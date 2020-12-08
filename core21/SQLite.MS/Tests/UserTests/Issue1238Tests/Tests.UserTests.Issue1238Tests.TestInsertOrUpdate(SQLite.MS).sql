BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[InheritanceParent]

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[InheritanceParent]
SET
	[TypeDiscriminator] = 1
WHERE
	[InheritanceParent].[InheritanceParentId] = 143 AND [InheritanceParent].[Name] IS NULL

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[InheritanceParent]
SET
	[TypeDiscriminator] = 1
WHERE
	[InheritanceParent].[InheritanceParentId] = 143 AND [InheritanceParent].[Name] IS NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[InheritanceParent] [t1]


BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN [t1].[TypeDiscriminator] = 2 THEN 1
		ELSE 0
	END as [c1],
	[t1].[InheritanceParentId],
	[t1].[TypeDiscriminator],
	[t1].[Name],
	CASE
		WHEN [t1].[TypeDiscriminator] = 1 THEN 1
		ELSE 0
	END as [c2]
FROM
	[InheritanceParent] [t1]

BeforeExecute
-- SqlCe

SELECT
	CASE
		WHEN [t1].[TypeDiscriminator] = 2 THEN 1
		ELSE 0
	END as [c1],
	[t1].[InheritanceChildId],
	[t1].[TypeDiscriminator],
	[t1].[InheritanceParentId],
	[t1].[Name],
	CASE
		WHEN [t1].[TypeDiscriminator] = 1 THEN 1
		ELSE 0
	END as [c2]
FROM
	[InheritanceChild] [t1]


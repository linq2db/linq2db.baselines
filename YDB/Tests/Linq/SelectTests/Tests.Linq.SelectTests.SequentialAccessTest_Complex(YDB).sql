-- YDB Ydb

SELECT
	t1.TypeDiscriminator as TypeDiscriminator,
	t1.InheritanceParentId as InheritanceParentId,
	t1.Name as Name
FROM
	InheritanceParent t1

-- YDB Ydb

SELECT
	t1.TypeDiscriminator as TypeDiscriminator,
	t1.InheritanceChildId as InheritanceChildId,
	t1.InheritanceParentId as InheritanceParentId,
	t1.Name as Name
FROM
	InheritanceChild t1


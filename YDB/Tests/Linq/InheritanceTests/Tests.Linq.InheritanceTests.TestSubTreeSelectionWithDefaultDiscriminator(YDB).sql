-- YDB Ydb

SELECT
	t1.Code as Code,
	t1.Id as Id,
	t1.Child1Field as Child1Field,
	t1.Grandchild11Field as Grandchild11Field,
	t1.Grandchild12Field as Grandchild12Field
FROM
	InheritanceFilter t1


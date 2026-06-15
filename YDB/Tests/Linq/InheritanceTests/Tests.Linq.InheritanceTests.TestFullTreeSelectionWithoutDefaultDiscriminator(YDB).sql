-- YDB Ydb

SELECT
	t1.Code as Code,
	t1.Id as Id,
	t1.Child1Field as Child1Field,
	t1.Child2Field as Child2Field,
	t1.Grandchild11Field as Grandchild11Field,
	t1.Grandchild12Field as Grandchild12Field,
	t1.Grandchild21Field as Grandchild21Field,
	t1.Grandchild22Field as Grandchild22Field
FROM
	InheritanceFilter t1


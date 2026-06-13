-- YDB Ydb

INSERT INTO InheritanceFilter
(
	Id,
	Code,
	Child1Field,
	Child2Field,
	Grandchild11Field,
	Grandchild12Field,
	Grandchild21Field,
	Grandchild22Field
)
VALUES
(1,1,11,0,0,0,0,0),
(2,2,0,12,0,0,0,0),
(3,11,23,0,13,0,0,0),
(4,12,24,0,0,14,0,0),
(5,21,0,25,0,0,15,0),
(6,22,0,26,0,0,0,16)

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


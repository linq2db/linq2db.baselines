BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InheritanceFilter
(
	Id,
	Code,
	Child1Field
)
VALUES
(
	1,
	1,
	11
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InheritanceFilter
(
	Id,
	Code,
	Child2Field
)
VALUES
(
	2,
	2,
	12
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InheritanceFilter
(
	Id,
	Code,
	Child1Field,
	Grandchild11Field
)
VALUES
(
	3,
	11,
	23,
	13
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InheritanceFilter
(
	Id,
	Code,
	Child1Field,
	Grandchild12Field
)
VALUES
(
	4,
	12,
	24,
	14
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InheritanceFilter
(
	Id,
	Code,
	Child2Field,
	Grandchild21Field
)
VALUES
(
	5,
	21,
	25,
	15
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO InheritanceFilter
(
	Id,
	Code,
	Child2Field,
	Grandchild22Field
)
VALUES
(
	6,
	22,
	26,
	16
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Code,
	t1.Id,
	t1.Child1Field,
	t1.Child2Field,
	t1.Grandchild11Field,
	t1.Grandchild12Field,
	t1.Grandchild21Field,
	t1.Grandchild22Field
FROM
	InheritanceFilter t1


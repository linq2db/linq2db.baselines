BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InheritanceFilter

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS InheritanceFilter
(
	Id                Int32,
	Code              Int32,
	Child1Field       Nullable(Int32),
	Child2Field       Nullable(Int32),
	Grandchild11Field Nullable(Int32),
	Grandchild12Field Nullable(Int32),
	Grandchild21Field Nullable(Int32),
	Grandchild22Field Nullable(Int32),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

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

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Code,
	t1.Id,
	t1.Child1Field,
	t1.Grandchild12Field,
	t1.Grandchild11Field
FROM
	InheritanceFilter t1
WHERE
	t1.Code IN (11, 12, 1)

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS InheritanceFilter


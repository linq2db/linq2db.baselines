BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InheritanceFilter

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
INSERT INTO InheritanceFilter(Id, Code, Child1Field, Child2Field, Grandchild11Field, Grandchild12Field, Grandchild21Field, Grandchild22Field) VALUES

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS InheritanceFilter


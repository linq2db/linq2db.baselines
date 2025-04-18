﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InheritanceFilter

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS InheritanceFilter


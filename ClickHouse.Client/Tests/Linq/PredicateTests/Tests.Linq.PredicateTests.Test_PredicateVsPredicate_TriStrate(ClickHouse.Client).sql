BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS BooleanTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS BooleanTable
(
	Id     Int32,
	Value1 Int32,
	Value2 Int32,
	Value4 Nullable(Int32),
	Value5 Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO BooleanTable
(
	Id,
	Value1,
	Value2,
	Value4,
	Value5
)
VALUES
(1,0,0,NULL,NULL),
(2,0,0,NULL,0),
(3,0,0,NULL,1),
(4,0,0,0,NULL),
(5,0,0,0,0),
(6,0,0,0,1),
(7,0,0,1,NULL),
(8,0,0,1,0),
(9,0,0,1,1),
(10,0,1,NULL,NULL),
(11,0,1,NULL,0),
(12,0,1,NULL,1),
(13,0,1,0,NULL),
(14,0,1,0,0),
(15,0,1,0,1),
(16,0,1,1,NULL),
(17,0,1,1,0),
(18,0,1,1,1),
(19,1,0,NULL,NULL),
(20,1,0,NULL,0),
(21,1,0,NULL,1),
(22,1,0,0,NULL),
(23,1,0,0,0),
(24,1,0,0,1),
(25,1,0,1,NULL),
(26,1,0,1,0),
(27,1,0,1,1),
(28,1,1,NULL,NULL),
(29,1,1,NULL,0),
(30,1,1,NULL,1),
(31,1,1,0,NULL),
(32,1,1,0,0),
(33,1,1,0,1),
(34,1,1,1,NULL),
(35,1,1,1,0),
(36,1,1,1,1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id,
	r.Value1,
	r.Value2,
	r.Value4,
	r.Value5
FROM
	BooleanTable r
WHERE
	(r.Value1 = r.Value2) = (r.Value4 = r.Value5) AND (r.Value4 = r.Value5) IS NOT NULL

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value1,
	t1.Value2,
	t1.Value4,
	t1.Value5
FROM
	BooleanTable t1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS BooleanTable


BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SampleClass1

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass1
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO SampleClass1
(
	Id,
	Value
)
VALUES
(toInt32(1),toInt32(1000)),
(toInt32(2),toInt32(2000)),
(toInt32(3),toInt32(3000)),
(toInt32(4),toInt32(4000)),
(toInt32(5),toInt32(5000)),
(toInt32(6),toInt32(6000)),
(toInt32(7),toInt32(7000)),
(toInt32(8),toInt32(8000)),
(toInt32(9),toInt32(9000)),
(toInt32(10),toInt32(10000))

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SampleClass2

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS SampleClass2
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO SampleClass2
(
	Id,
	Value
)
VALUES
(toInt32(1),toInt32(1000)),
(toInt32(2),toInt32(2000)),
(toInt32(3),toInt32(3000)),
(toInt32(4),toInt32(4000)),
(toInt32(5),toInt32(5000)),
(toInt32(6),toInt32(6000)),
(toInt32(7),toInt32(7000)),
(toInt32(8),toInt32(8000)),
(toInt32(9),toInt32(9000)),
(toInt32(10),toInt32(10000))

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ChildEntitity

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS ChildEntitity
(
	Id       Int32,
	ParentId Nullable(Int32),
	SubId    Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO ChildEntitity
(
	Id,
	ParentId,
	SubId
)
VALUES
(toInt32(1),toInt32(1),toInt32(1)),
(toInt32(2),toInt32(1),toInt32(2)),
(toInt32(3),toInt32(1),toInt32(3)),
(toInt32(4),toInt32(1),toInt32(4)),
(toInt32(5),toInt32(1),toInt32(5)),
(toInt32(6),toInt32(1),toInt32(6)),
(toInt32(7),toInt32(1),toInt32(7)),
(toInt32(8),toInt32(1),toInt32(8)),
(toInt32(9),toInt32(1),toInt32(9)),
(toInt32(10),toInt32(1),toInt32(10)),
(toInt32(11),toInt32(2),toInt32(11)),
(toInt32(12),toInt32(2),toInt32(12)),
(toInt32(13),toInt32(2),toInt32(13)),
(toInt32(14),toInt32(2),toInt32(14)),
(toInt32(15),toInt32(2),toInt32(15)),
(toInt32(16),toInt32(2),toInt32(16)),
(toInt32(17),toInt32(2),toInt32(17)),
(toInt32(18),toInt32(2),toInt32(18)),
(toInt32(19),toInt32(2),toInt32(19)),
(toInt32(20),toInt32(2),toInt32(20)),
(toInt32(21),toInt32(3),toInt32(21)),
(toInt32(22),toInt32(3),toInt32(22)),
(toInt32(23),toInt32(3),toInt32(23)),
(toInt32(24),toInt32(3),toInt32(24)),
(toInt32(25),toInt32(3),toInt32(25)),
(toInt32(26),toInt32(3),toInt32(26)),
(toInt32(27),toInt32(3),toInt32(27)),
(toInt32(28),toInt32(3),toInt32(28)),
(toInt32(29),toInt32(3),toInt32(29)),
(toInt32(30),toInt32(3),toInt32(30)),
(toInt32(31),toInt32(4),toInt32(31)),
(toInt32(32),toInt32(4),toInt32(32)),
(toInt32(33),toInt32(4),toInt32(33)),
(toInt32(34),toInt32(4),toInt32(34)),
(toInt32(35),toInt32(4),toInt32(35)),
(toInt32(36),toInt32(4),toInt32(36)),
(toInt32(37),toInt32(4),toInt32(37)),
(toInt32(38),toInt32(4),toInt32(38)),
(toInt32(39),toInt32(4),toInt32(39)),
(toInt32(40),toInt32(4),toInt32(40)),
(toInt32(41),toInt32(5),toInt32(41)),
(toInt32(42),toInt32(5),toInt32(42)),
(toInt32(43),toInt32(5),toInt32(43)),
(toInt32(44),toInt32(5),toInt32(44)),
(toInt32(45),toInt32(5),toInt32(45)),
(toInt32(46),toInt32(5),toInt32(46)),
(toInt32(47),toInt32(5),toInt32(47)),
(toInt32(48),toInt32(5),toInt32(48)),
(toInt32(49),toInt32(5),toInt32(49)),
(toInt32(50),toInt32(5),toInt32(50)),
(toInt32(51),toInt32(6),toInt32(51)),
(toInt32(52),toInt32(6),toInt32(52)),
(toInt32(53),toInt32(6),toInt32(53)),
(toInt32(54),toInt32(6),toInt32(54)),
(toInt32(55),toInt32(6),toInt32(55)),
(toInt32(56),toInt32(6),toInt32(56)),
(toInt32(57),toInt32(6),toInt32(57)),
(toInt32(58),toInt32(6),toInt32(58)),
(toInt32(59),toInt32(6),toInt32(59)),
(toInt32(60),toInt32(6),toInt32(60)),
(toInt32(61),toInt32(7),toInt32(61)),
(toInt32(62),toInt32(7),toInt32(62)),
(toInt32(63),toInt32(7),toInt32(63)),
(toInt32(64),toInt32(7),toInt32(64)),
(toInt32(65),toInt32(7),toInt32(65)),
(toInt32(66),toInt32(7),toInt32(66)),
(toInt32(67),toInt32(7),toInt32(67)),
(toInt32(68),toInt32(7),toInt32(68)),
(toInt32(69),toInt32(7),toInt32(69)),
(toInt32(70),toInt32(7),toInt32(70)),
(toInt32(71),toInt32(8),toInt32(71)),
(toInt32(72),toInt32(8),toInt32(72)),
(toInt32(73),toInt32(8),toInt32(73)),
(toInt32(74),toInt32(8),toInt32(74)),
(toInt32(75),toInt32(8),toInt32(75)),
(toInt32(76),toInt32(8),toInt32(76)),
(toInt32(77),toInt32(8),toInt32(77)),
(toInt32(78),toInt32(8),toInt32(78)),
(toInt32(79),toInt32(8),toInt32(79)),
(toInt32(80),toInt32(8),toInt32(80)),
(toInt32(81),toInt32(9),toInt32(81)),
(toInt32(82),toInt32(9),toInt32(82)),
(toInt32(83),toInt32(9),toInt32(83)),
(toInt32(84),toInt32(9),toInt32(84)),
(toInt32(85),toInt32(9),toInt32(85)),
(toInt32(86),toInt32(9),toInt32(86)),
(toInt32(87),toInt32(9),toInt32(87)),
(toInt32(88),toInt32(9),toInt32(88)),
(toInt32(89),toInt32(9),toInt32(89)),
(toInt32(90),toInt32(9),toInt32(90)),
(toInt32(91),toInt32(10),toInt32(91)),
(toInt32(92),toInt32(10),toInt32(92)),
(toInt32(93),toInt32(10),toInt32(93)),
(toInt32(94),toInt32(10),toInt32(94)),
(toInt32(95),toInt32(10),toInt32(95)),
(toInt32(96),toInt32(10),toInt32(96)),
(toInt32(97),toInt32(10),toInt32(97)),
(toInt32(98),toInt32(10),toInt32(98)),
(toInt32(99),toInt32(10),toInt32(99)),
(toInt32(100),toInt32(10),toInt32(100))

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SubEntitity

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS SubEntitity
(
	Id    Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO SubEntitity
(
	Id,
	Value
)
VALUES
(toInt32(1),toInt32(20)),
(toInt32(2),toInt32(40)),
(toInt32(3),toInt32(60)),
(toInt32(4),toInt32(80)),
(toInt32(5),toInt32(100)),
(toInt32(6),toInt32(120)),
(toInt32(7),toInt32(140)),
(toInt32(8),toInt32(160)),
(toInt32(9),toInt32(180)),
(toInt32(10),toInt32(200)),
(toInt32(11),toInt32(220)),
(toInt32(12),toInt32(240)),
(toInt32(13),toInt32(260)),
(toInt32(14),toInt32(280)),
(toInt32(15),toInt32(300)),
(toInt32(16),toInt32(320)),
(toInt32(17),toInt32(340)),
(toInt32(18),toInt32(360)),
(toInt32(19),toInt32(380)),
(toInt32(20),toInt32(400)),
(toInt32(21),toInt32(420)),
(toInt32(22),toInt32(440)),
(toInt32(23),toInt32(460)),
(toInt32(24),toInt32(480)),
(toInt32(25),toInt32(500)),
(toInt32(26),toInt32(520)),
(toInt32(27),toInt32(540)),
(toInt32(28),toInt32(560)),
(toInt32(29),toInt32(580)),
(toInt32(30),toInt32(600)),
(toInt32(31),toInt32(620)),
(toInt32(32),toInt32(640)),
(toInt32(33),toInt32(660)),
(toInt32(34),toInt32(680)),
(toInt32(35),toInt32(700)),
(toInt32(36),toInt32(720)),
(toInt32(37),toInt32(740)),
(toInt32(38),toInt32(760)),
(toInt32(39),toInt32(780)),
(toInt32(40),toInt32(800)),
(toInt32(41),toInt32(820)),
(toInt32(42),toInt32(840)),
(toInt32(43),toInt32(860)),
(toInt32(44),toInt32(880)),
(toInt32(45),toInt32(900)),
(toInt32(46),toInt32(920)),
(toInt32(47),toInt32(940)),
(toInt32(48),toInt32(960)),
(toInt32(49),toInt32(980)),
(toInt32(50),toInt32(1000)),
(toInt32(51),toInt32(1020)),
(toInt32(52),toInt32(1040)),
(toInt32(53),toInt32(1060)),
(toInt32(54),toInt32(1080)),
(toInt32(55),toInt32(1100)),
(toInt32(56),toInt32(1120)),
(toInt32(57),toInt32(1140)),
(toInt32(58),toInt32(1160)),
(toInt32(59),toInt32(1180)),
(toInt32(60),toInt32(1200)),
(toInt32(61),toInt32(1220)),
(toInt32(62),toInt32(1240)),
(toInt32(63),toInt32(1260)),
(toInt32(64),toInt32(1280)),
(toInt32(65),toInt32(1300)),
(toInt32(66),toInt32(1320)),
(toInt32(67),toInt32(1340)),
(toInt32(68),toInt32(1360)),
(toInt32(69),toInt32(1380)),
(toInt32(70),toInt32(1400)),
(toInt32(71),toInt32(1420)),
(toInt32(72),toInt32(1440)),
(toInt32(73),toInt32(1460)),
(toInt32(74),toInt32(1480)),
(toInt32(75),toInt32(1500)),
(toInt32(76),toInt32(1520)),
(toInt32(77),toInt32(1540)),
(toInt32(78),toInt32(1560)),
(toInt32(79),toInt32(1580)),
(toInt32(80),toInt32(1600)),
(toInt32(81),toInt32(1620)),
(toInt32(82),toInt32(1640)),
(toInt32(83),toInt32(1660)),
(toInt32(84),toInt32(1680)),
(toInt32(85),toInt32(1700)),
(toInt32(86),toInt32(1720)),
(toInt32(87),toInt32(1740)),
(toInt32(88),toInt32(1760)),
(toInt32(89),toInt32(1780)),
(toInt32(90),toInt32(1800)),
(toInt32(91),toInt32(1820)),
(toInt32(92),toInt32(1840)),
(toInt32(93),toInt32(1860)),
(toInt32(94),toInt32(1880)),
(toInt32(95),toInt32(1900)),
(toInt32(96),toInt32(1920)),
(toInt32(97),toInt32(1940)),
(toInt32(98),toInt32(1960)),
(toInt32(99),toInt32(1980)),
(toInt32(100),toInt32(2000))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	lw_SampleClass1.Id,
	_.Id,
	_.ParentId,
	_.SubId,
	a_SubItem.Id,
	a_SubItem.Value
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			SampleClass1 t1
	) lw_SampleClass1
		INNER JOIN ChildEntitity _ ON lw_SampleClass1.Id = _.ParentId AND _.ParentId % toInt32(3) = toInt32(0)
		LEFT JOIN SubEntitity a_SubItem ON _.SubId = a_SubItem.Id
ORDER BY
	_.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	SampleClass1 t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	lw_SampleClass2.Id,
	_.Id,
	_.ParentId,
	_.SubId,
	a_SubItem.Id,
	a_SubItem.Value
FROM
	(
		SELECT DISTINCT
			t1.Id as Id
		FROM
			SampleClass2 t1
	) lw_SampleClass2
		INNER JOIN ChildEntitity _ ON lw_SampleClass2.Id = _.ParentId AND _.ParentId % toInt32(3) = toInt32(0)
		LEFT JOIN SubEntitity a_SubItem ON _.SubId = a_SubItem.Id
ORDER BY
	_.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	SampleClass2 t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SubEntitity

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS ChildEntitity

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SampleClass2

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS SampleClass1


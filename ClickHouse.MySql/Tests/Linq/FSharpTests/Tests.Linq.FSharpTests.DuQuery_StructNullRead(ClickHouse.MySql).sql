-- ClickHouse.MySql ClickHouse
INSERT INTO StructDuRow
(
	Id,
	Key
)
VALUES
(
	1,
	10
)

-- ClickHouse.MySql ClickHouse
INSERT INTO DuOuter
(
	Oid,
	RefId
)
VALUES
(
	1,
	1
)

-- ClickHouse.MySql ClickHouse
INSERT INTO DuOuter
(
	Oid,
	RefId
)
VALUES
(
	2,
	99
)

-- ClickHouse.MySql ClickHouse
SELECT
	arg2.Key
FROM
	DuOuter tupledArg
		LEFT JOIN StructDuRow arg2 ON tupledArg.RefId = arg2.Id
ORDER BY
	tupledArg.Oid


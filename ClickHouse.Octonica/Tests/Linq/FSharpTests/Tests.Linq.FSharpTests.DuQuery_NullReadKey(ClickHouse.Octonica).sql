-- ClickHouse.Octonica ClickHouse
INSERT INTO DuRow
(
	Id,
	Key
)
VALUES
(
	1,
	10
)

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
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

-- ClickHouse.Octonica ClickHouse
SELECT
	arg2.Key
FROM
	DuOuter tupledArg
		LEFT JOIN DuRow arg2 ON tupledArg.RefId = arg2.Id
ORDER BY
	tupledArg.Oid


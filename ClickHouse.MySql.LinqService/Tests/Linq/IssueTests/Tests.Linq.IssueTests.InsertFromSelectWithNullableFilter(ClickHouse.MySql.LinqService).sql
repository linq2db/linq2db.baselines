BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO AllTypes
(
	smallintDataType,
	intDataType
)
SELECT
	toInt16(123),
	toInt32(t2.ID)
FROM
	(
		SELECT DISTINCT
			a_Association.smallintDataType as ID
		FROM
			AllTypes t1
				INNER JOIN AllTypes a_Association ON t1.smallintDataType = a_Association.intDataType
		WHERE
			1 = 0
	) t2

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO AllTypes
(
	smallintDataType,
	intDataType
)
SELECT
	toInt16(123),
	toInt32(t2.ID)
FROM
	(
		SELECT DISTINCT
			a_Association.smallintDataType as ID
		FROM
			AllTypes t1
				INNER JOIN AllTypes a_Association ON t1.smallintDataType = a_Association.intDataType
		WHERE
			toInt32(t1.smallintDataType) = toInt16(1234)
	) t2


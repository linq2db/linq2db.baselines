BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO AllTypes
(
	smallintDataType,
	intDataType
)
SELECT
	toInt16(123),
	toInt32(t1.smallintDataType)
FROM
	(
		SELECT DISTINCT
			c_1.smallintDataType as smallintDataType
		FROM
			AllTypes _
				INNER JOIN AllTypes c_1 ON _.smallintDataType = c_1.intDataType
		WHERE
			toInt32(_.smallintDataType) IS NULL
	) t1

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO AllTypes
(
	smallintDataType,
	intDataType
)
SELECT
	toInt16(123),
	toInt32(t1.smallintDataType)
FROM
	(
		SELECT DISTINCT
			c_1.smallintDataType as smallintDataType
		FROM
			AllTypes _
				INNER JOIN AllTypes c_1 ON _.smallintDataType = c_1.intDataType
		WHERE
			toInt32(_.smallintDataType) = toInt16(1234)
	) t1


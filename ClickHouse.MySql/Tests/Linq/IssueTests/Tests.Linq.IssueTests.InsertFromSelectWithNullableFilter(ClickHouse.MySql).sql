BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO AllTypes
(
	smallintDataType,
	intDataType
)
SELECT
	toInt16(123),
	toInt32(t1.ID)
FROM
	(
		SELECT DISTINCT
			a_Association.smallintDataType as ID
		FROM
			AllTypes _
				INNER JOIN AllTypes a_Association ON _.smallintDataType = a_Association.intDataType
		WHERE
			toInt32(_.smallintDataType) = toInt16(0)
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
	toInt32(t1.ID)
FROM
	(
		SELECT DISTINCT
			a_Association.smallintDataType as ID
		FROM
			AllTypes _
				INNER JOIN AllTypes a_Association ON _.smallintDataType = a_Association.intDataType
		WHERE
			toInt32(_.smallintDataType) = toInt16(1234)
	) t1


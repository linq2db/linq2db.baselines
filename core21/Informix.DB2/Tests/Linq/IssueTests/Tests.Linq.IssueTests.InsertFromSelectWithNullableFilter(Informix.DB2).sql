BeforeExecute
-- Informix.DB2 Informix

INSERT INTO AllTypes
(
	smallintDataType,
	intDataType
)
SELECT
	123,
	t2.smallintDataType
FROM
	(
		SELECT DISTINCT
			c_1.smallintDataType
		FROM
			AllTypes t1
				INNER JOIN AllTypes c_1 ON t1.smallintDataType = c_1.intDataType
		WHERE
			t1.smallintDataType IS NULL
	) t2

BeforeExecute
-- Informix.DB2 Informix
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = 1234

INSERT INTO AllTypes
(
	smallintDataType,
	intDataType
)
SELECT
	123,
	t2.smallintDataType
FROM
	(
		SELECT DISTINCT
			c_1.smallintDataType
		FROM
			AllTypes t1
				INNER JOIN AllTypes c_1 ON t1.smallintDataType = c_1.intDataType
		WHERE
			t1.smallintDataType = @p1
	) t2


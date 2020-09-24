BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value_1 Integer(4) -- Int32
SET     @Value_1 = 0

INSERT INTO AllTypes
(
	intDataType
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value_1 Integer(4) -- Int32
SET     @Value_1 = 200

INSERT INTO AllTypes
(
	intDataType
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value_1 Integer(4) -- Int32
SET     @Value_1 = 300

INSERT INTO AllTypes
(
	intDataType
)
VALUES
(
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @lastId Integer(4) -- Int32
SET     @lastId = 3222

SELECT
	t1.ID,
	t1.intDataType
FROM
	AllTypes t1
WHERE
	t1.ID > @lastId
ORDER BY
	t1.ID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @lastId Integer(4) -- Int32
SET     @lastId = 3222

DELETE FROM
	AllTypes
WHERE
	AllTypes.ID >= @lastId


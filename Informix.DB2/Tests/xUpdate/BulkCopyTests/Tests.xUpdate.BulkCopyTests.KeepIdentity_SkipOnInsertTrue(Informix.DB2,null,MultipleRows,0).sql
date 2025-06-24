BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 0

INSERT INTO AllTypes
(
	intDataType
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 200

INSERT INTO AllTypes
(
	intDataType
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 300

INSERT INTO AllTypes
(
	intDataType
)
VALUES
(
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @lastId Integer(4) -- Int32
SET     @lastId = 3

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
SET     @lastId = 3

DELETE FROM
	AllTypes
WHERE
	AllTypes.ID >= @lastId


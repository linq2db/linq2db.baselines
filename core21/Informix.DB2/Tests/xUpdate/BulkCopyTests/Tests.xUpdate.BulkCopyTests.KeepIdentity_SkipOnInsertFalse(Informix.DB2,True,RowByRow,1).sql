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
DECLARE @lastId Integer(4) -- Int32
SET     @lastId = 3100

DELETE FROM
	AllTypes
WHERE
	AllTypes.ID >= @lastId


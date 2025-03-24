BeforeExecute
--  Informix.DB2 Informix

INSERT INTO AllTypes (ID) VALUES (2147483647)

BeforeExecute
--  Informix.DB2 Informix

DELETE FROM AllTypes WHERE ID > 2

BeforeExecute
--  Informix.DB2 Informix

ALTER TABLE AllTypes MODIFY (ID SERIAL(3))

BeforeExecute
--  Informix.DB2 Informix

ALTER TABLE AllTypes ADD CONSTRAINT PRIMARY KEY (ID)

BeforeExecute
--  Informix.DB2 Informix
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
--  Informix.DB2 Informix

SELECT DBINFO('sqlca.sqlerrd1') FROM systables where tabid = 1

BeforeExecute
--  Informix.DB2 Informix
DECLARE @lastId Integer(4) -- Int32
SET     @lastId = 3

DELETE FROM
	AllTypes
WHERE
	AllTypes.ID >= @lastId


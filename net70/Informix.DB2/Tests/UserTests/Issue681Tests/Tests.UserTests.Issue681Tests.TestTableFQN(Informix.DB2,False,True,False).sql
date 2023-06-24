BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue681Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue681Table
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue681Table4

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue681Table4
(
	ID      SERIAL  NOT NULL,
	"Value" Int     NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	DBINFO('dbname')
FROM
	LinqDataTypes t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10

INSERT INTO testdb:Issue681Table
(
	ID,
	"Value"
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 123
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

UPDATE
	testdb:Issue681Table
SET
	testdb:Issue681Table."Value" = @Value
WHERE
	testdb:Issue681Table.ID = @ID

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1."Value"
FROM
	testdb:Issue681Table t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

DELETE FROM
	testdb:Issue681Table
WHERE
	testdb:Issue681Table.ID = @ID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 123
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

UPDATE
	testdb:Issue681Table
SET
	testdb:Issue681Table."Value" = @Value
WHERE
	testdb:Issue681Table.ID = @ID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5
DECLARE @Value Integer(4) -- Int32
SET     @Value = 123

INSERT INTO testdb:Issue681Table
(
	ID,
	"Value"
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10

INSERT INTO testdb:Issue681Table4
(
	"Value"
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

CREATE TABLE testdb:Issue681Table2
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE testdb:Issue681Table2

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

CREATE TABLE testdb:Issue681Table3
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DROP TABLE testdb:Issue681Table3

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue681Table4

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue681Table


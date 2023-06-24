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
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10

INSERT INTO Issue681Table
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
	Issue681Table
SET
	Issue681Table."Value" = @Value
WHERE
	Issue681Table.ID = @ID

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.ID,
	t1."Value"
FROM
	Issue681Table t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

DELETE FROM
	Issue681Table
WHERE
	Issue681Table.ID = @ID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 123
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

UPDATE
	Issue681Table
SET
	Issue681Table."Value" = @Value
WHERE
	Issue681Table.ID = @ID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5
DECLARE @Value Integer(4) -- Int32
SET     @Value = 123

INSERT INTO Issue681Table
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

INSERT INTO Issue681Table4
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

CREATE TABLE Issue681Table2
(
	ID      Int NOT NULL,
	"Value" Int NOT NULL,

	PRIMARY KEY (ID)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Issue681Table2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue681Table4

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue681Table


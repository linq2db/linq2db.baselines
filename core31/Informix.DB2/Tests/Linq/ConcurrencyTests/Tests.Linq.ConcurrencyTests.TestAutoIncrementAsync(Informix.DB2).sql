BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ConcurrencyTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS ConcurrencyTable
(
	Id      Int           NOT NULL,
	Stamp   Int           NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -10
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'initial'

INSERT INTO ConcurrencyTable
(
	Id,
	Stamp,
	"Value"
)
VALUES
(
	@Id,
	@Stamp,
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyTable t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 1'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -10

UPDATE
	ConcurrencyTable
SET
	ConcurrencyTable.Stamp = ConcurrencyTable.Stamp + 1,
	ConcurrencyTable."Value" = @Value_1
WHERE
	ConcurrencyTable.Id = @Id AND ConcurrencyTable.Stamp = @Stamp

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyTable t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 2'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -9

UPDATE
	ConcurrencyTable
SET
	ConcurrencyTable.Stamp = ConcurrencyTable.Stamp + 1,
	ConcurrencyTable."Value" = @Value_1
WHERE
	ConcurrencyTable.Id = @Id AND ConcurrencyTable.Stamp = @Stamp

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyTable t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 3'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -9

UPDATE
	ConcurrencyTable
SET
	ConcurrencyTable.Stamp = ConcurrencyTable.Stamp + 1,
	ConcurrencyTable."Value" = @Value_1
WHERE
	ConcurrencyTable.Id = @Id AND ConcurrencyTable.Stamp = @Stamp

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyTable t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -9

DELETE FROM
	ConcurrencyTable
WHERE
	ConcurrencyTable.Id = @Id AND ConcurrencyTable.Stamp = @Stamp

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyTable t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -8

DELETE FROM
	ConcurrencyTable
WHERE
	ConcurrencyTable.Id = @Id AND ConcurrencyTable.Stamp = @Stamp

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyTable t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ConcurrencyTable


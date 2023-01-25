BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ConcurrencyFiltered

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS ConcurrencyFiltered
(
	Id      Int           NOT NULL,
	Stamp   Int           NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -10
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'initial'

INSERT INTO ConcurrencyFiltered
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
	ConcurrencyFiltered t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 1'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -10

UPDATE
	ConcurrencyFiltered
SET
	ConcurrencyFiltered.Stamp = ConcurrencyFiltered.Stamp + 1,
	ConcurrencyFiltered."Value" = @Value_1
WHERE
	ConcurrencyFiltered.Id = 2 AND ConcurrencyFiltered.Id = @Id AND
	ConcurrencyFiltered.Stamp = @Stamp

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Value_1 VarChar(7) -- String
SET     @Value_1 = 'value 2'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -10

UPDATE
	ConcurrencyFiltered
SET
	ConcurrencyFiltered.Stamp = ConcurrencyFiltered.Stamp + 1,
	ConcurrencyFiltered."Value" = @Value_1
WHERE
	ConcurrencyFiltered.Id = 1 AND ConcurrencyFiltered.Id = @Id AND
	ConcurrencyFiltered.Stamp = @Stamp

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -9

DELETE FROM
	ConcurrencyFiltered
WHERE
	ConcurrencyFiltered.Id = 2 AND ConcurrencyFiltered.Id = @Id AND
	ConcurrencyFiltered.Stamp = @Stamp

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -9

DELETE FROM
	ConcurrencyFiltered
WHERE
	ConcurrencyFiltered.Id = 1 AND ConcurrencyFiltered.Id = @Id AND
	ConcurrencyFiltered.Stamp = @Stamp

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ConcurrencyFiltered


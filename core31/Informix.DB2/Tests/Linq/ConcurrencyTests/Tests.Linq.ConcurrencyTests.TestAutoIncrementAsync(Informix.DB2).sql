﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ConcurrencyAutoIncrement

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS ConcurrencyAutoIncrement
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
DECLARE @Value VarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO ConcurrencyAutoIncrement
(
	Id,
	Stamp,
	"Value"
)
VALUES
(
	@Id,
	@Stamp,
	@Value
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -10

UPDATE
	ConcurrencyAutoIncrement
SET
	ConcurrencyAutoIncrement.Stamp = ConcurrencyAutoIncrement.Stamp + 1,
	ConcurrencyAutoIncrement."Value" = @Value
WHERE
	ConcurrencyAutoIncrement.Id = @Id AND ConcurrencyAutoIncrement.Stamp = @Stamp

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -9

UPDATE
	ConcurrencyAutoIncrement
SET
	ConcurrencyAutoIncrement.Stamp = ConcurrencyAutoIncrement.Stamp + 1,
	ConcurrencyAutoIncrement."Value" = @Value
WHERE
	ConcurrencyAutoIncrement.Id = @Id AND ConcurrencyAutoIncrement.Stamp = @Stamp

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -9

UPDATE
	ConcurrencyAutoIncrement
SET
	ConcurrencyAutoIncrement.Stamp = ConcurrencyAutoIncrement.Stamp + 1,
	ConcurrencyAutoIncrement."Value" = @Value
WHERE
	ConcurrencyAutoIncrement.Id = @Id AND ConcurrencyAutoIncrement.Stamp = @Stamp

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -9

DELETE FROM
	ConcurrencyAutoIncrement
WHERE
	ConcurrencyAutoIncrement.Id = @Id AND ConcurrencyAutoIncrement.Stamp = @Stamp

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -8

DELETE FROM
	ConcurrencyAutoIncrement
WHERE
	ConcurrencyAutoIncrement.Id = @Id AND ConcurrencyAutoIncrement.Stamp = @Stamp

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyAutoIncrement t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS ConcurrencyAutoIncrement


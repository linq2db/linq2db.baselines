BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -10
DECLARE @Value VarChar(7) -- String
SET     @Value = 'initial'

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
	@Value
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -10

UPDATE
	ConcurrencyFiltered r
SET
	Stamp = r.Stamp + 1,
	"Value" = @Value
WHERE
	r.Id = 2 AND r.Id = @Id AND r.Stamp = @Stamp

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Value VarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = -10

UPDATE
	ConcurrencyFiltered r
SET
	Stamp = r.Stamp + 1,
	"Value" = @Value
WHERE
	r.Id = 1 AND r.Id = @Id AND r.Stamp = @Stamp

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
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
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
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
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.Stamp,
	t1."Value"
FROM
	ConcurrencyFiltered t1


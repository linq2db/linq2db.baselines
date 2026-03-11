-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @DecimalValue1 Decimal
SET     @DecimalValue1 = NULL
DECLARE @DecimalValue2 Decimal(16)
SET     @DecimalValue2 = 1

INSERT INTO MultipleRowsTable
(
	Id,
	DecimalValue1,
	DecimalValue2
)
VALUES
(
	@Id,
	@DecimalValue1,
	@DecimalValue2
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @DecimalValue1 Decimal(16)
SET     @DecimalValue1 = 1.5
DECLARE @DecimalValue2 Decimal(16)
SET     @DecimalValue2 = -2.6

INSERT INTO MultipleRowsTable
(
	Id,
	DecimalValue1,
	DecimalValue2
)
VALUES
(
	@Id,
	@DecimalValue1,
	@DecimalValue2
)

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.DecimalValue1,
	t1.DecimalValue2
FROM
	MultipleRowsTable t1
ORDER BY
	t1.Id


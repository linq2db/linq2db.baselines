-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value Decimal(16)
SET     @Value = 12.34

INSERT INTO OptionDecimalTable
(
	Id,
	"Value"
)
VALUES
(
	@Id,
	@Value
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Value Decimal
SET     @Value = NULL

INSERT INTO OptionDecimalTable
(
	Id,
	"Value"
)
VALUES
(
	@Id,
	@Value
)

-- Informix.DB2 Informix

SELECT FIRST 2
	r.Id,
	r."Value"
FROM
	OptionDecimalTable r
WHERE
	r.Id = 1

-- Informix.DB2 Informix

SELECT FIRST 2
	r.Id,
	r."Value"
FROM
	OptionDecimalTable r
WHERE
	r.Id = 2


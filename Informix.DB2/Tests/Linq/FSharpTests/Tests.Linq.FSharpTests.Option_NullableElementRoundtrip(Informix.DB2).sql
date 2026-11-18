-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value Integer(4) -- Int32
SET     @Value = 42

INSERT INTO OptionNullableElemTable
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
DECLARE @Value Integer -- Int32
SET     @Value = NULL

INSERT INTO OptionNullableElemTable
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
	OptionNullableElemTable r
WHERE
	r.Id = 1

-- Informix.DB2 Informix
SELECT FIRST 2
	r.Id,
	r."Value"
FROM
	OptionNullableElemTable r
WHERE
	r.Id = 2


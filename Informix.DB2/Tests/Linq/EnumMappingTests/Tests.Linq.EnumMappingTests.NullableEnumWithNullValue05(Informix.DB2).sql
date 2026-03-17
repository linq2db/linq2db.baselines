-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 104

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @p

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 101
DECLARE @Value Integer(4) -- Int32
SET     @Value = 11

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
)
VALUES
(
	@Id,
	@Value
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 102
DECLARE @Value Integer(4) -- Int32
SET     @Value = 0

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
)
VALUES
(
	@Id,
	@Value
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 103
DECLARE @Value Integer -- Int32
SET     @Value = NULL

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
)
VALUES
(
	@Id,
	@Value
)

-- Informix.DB2 Informix

SELECT
	r.ID,
	r.IntValue
FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID <= 103
ORDER BY
	r.ID

-- Informix.DB2 Informix

SELECT
	r.ID,
	r.IntValue,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID <= 103
ORDER BY
	r.ID

-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 104

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @p


BeforeExecute
-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 104

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @p

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 101
DECLARE @Value Char(2) -- StringFixedLength
SET     @Value = '11'

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 102
DECLARE @Value Char(2) -- StringFixedLength
SET     @Value = '22'

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 103
DECLARE @Value Char -- StringFixedLength
SET     @Value = NULL

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	r.ID,
	r.StringValue
FROM
	LinqDataTypes r
WHERE
	r.ID >= 101 AND r.ID <= 103
ORDER BY
	r.ID

BeforeExecute
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

BeforeExecute
-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 104

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @p


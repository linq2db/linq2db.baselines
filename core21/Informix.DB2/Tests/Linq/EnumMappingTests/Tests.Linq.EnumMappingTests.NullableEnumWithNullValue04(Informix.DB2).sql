BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 105

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @Id

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 101
DECLARE @Value_1 Char(2) -- StringFixedLength
SET     @Value_1 = '11'

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 102
DECLARE @Value_1 Char(2) -- StringFixedLength
SET     @Value_1 = '22'

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 103
DECLARE @Value_1 Char -- StringFixedLength
SET     @Value_1 = NULL

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 104
DECLARE @Value_1 Char -- StringFixedLength
SET     @Value_1 = NULL

INSERT INTO LinqDataTypes
(
	ID,
	StringValue
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 105

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @Id


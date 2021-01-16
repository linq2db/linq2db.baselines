BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 104

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @Id

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 101
DECLARE @Value_1 Integer(4) -- Int32
SET     @Value_1 = 11

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
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
DECLARE @Value_1 Integer(4) -- Int32
SET     @Value_1 = 0

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
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
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = NULL

INSERT INTO LinqDataTypes
(
	ID,
	IntValue
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

DELETE FROM
	LinqDataTypes
WHERE
	LinqDataTypes.ID >= 101 AND LinqDataTypes.ID < @Id


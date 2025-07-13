BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @DoubleNullable Double
SET     @DoubleNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	DoubleNullable
)
VALUES
(
	@Id,
	@DoubleNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @DoubleNullable Double(8)
SET     @DoubleNullable = 4.1299999999999999

INSERT INTO CreateTableTypes
(
	Id,
	DoubleNullable
)
VALUES
(
	@Id,
	@DoubleNullable
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.DoubleNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id


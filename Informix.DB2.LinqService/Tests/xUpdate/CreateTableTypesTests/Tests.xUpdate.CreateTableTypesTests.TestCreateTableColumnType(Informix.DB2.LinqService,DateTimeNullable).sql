BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @DateTimeNullable Timestamp -- DateTime
SET     @DateTimeNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	DateTimeNullable
)
VALUES
(
	@Id,
	@DateTimeNullable
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @DateTimeNullable Timestamp(16) -- DateTime
SET     @DateTimeNullable = TO_DATE('2018-11-25 01:02:03', '%Y-%m-%d %H:%M:%S')

INSERT INTO CreateTableTypes
(
	Id,
	DateTimeNullable
)
VALUES
(
	@Id,
	@DateTimeNullable
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1.DateTimeNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id


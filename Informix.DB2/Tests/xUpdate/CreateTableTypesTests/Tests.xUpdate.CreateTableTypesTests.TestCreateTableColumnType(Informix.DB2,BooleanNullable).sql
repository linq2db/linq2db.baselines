-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @BooleanNullable SmallInt -- Boolean
SET     @BooleanNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	BooleanNullable
)
VALUES
(
	@Id,
	@BooleanNullable
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @BooleanNullable Char(1) -- StringFixedLength
SET     @BooleanNullable = 't'

INSERT INTO CreateTableTypes
(
	Id,
	BooleanNullable
)
VALUES
(
	@Id,
	@BooleanNullable
)

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.BooleanNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id


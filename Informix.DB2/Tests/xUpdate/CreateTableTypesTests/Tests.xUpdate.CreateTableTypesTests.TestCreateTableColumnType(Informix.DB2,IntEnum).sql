-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @IntEnum Integer(4) -- Int32
SET     @IntEnum = 11

INSERT INTO CreateTableTypes
(
	Id,
	IntEnum
)
VALUES
(
	@Id,
	@IntEnum
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @IntEnum Integer(4) -- Int32
SET     @IntEnum = 60

INSERT INTO CreateTableTypes
(
	Id,
	IntEnum
)
VALUES
(
	@Id,
	@IntEnum
)

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.IntEnum
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id


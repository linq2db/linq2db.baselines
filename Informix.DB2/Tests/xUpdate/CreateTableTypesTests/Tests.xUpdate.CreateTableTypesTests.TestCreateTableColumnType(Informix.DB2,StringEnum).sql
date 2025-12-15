-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StringEnum VarChar(2) -- String
SET     @StringEnum = '14'

INSERT INTO CreateTableTypes
(
	Id,
	StringEnum
)
VALUES
(
	@Id,
	@StringEnum
)

-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @StringEnum VarChar(1) -- String
SET     @StringEnum = '4'

INSERT INTO CreateTableTypes
(
	Id,
	StringEnum
)
VALUES
(
	@Id,
	@StringEnum
)

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.StringEnum
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id


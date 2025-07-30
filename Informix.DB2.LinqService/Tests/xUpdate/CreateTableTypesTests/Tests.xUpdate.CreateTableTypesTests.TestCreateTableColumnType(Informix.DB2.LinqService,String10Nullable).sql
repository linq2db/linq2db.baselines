BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @String VarChar -- String
SET     @String = NULL

INSERT INTO CreateTableTypes
(
	Id,
	String
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @String VarChar(9) -- String
SET     @String = 'test 10 n'

INSERT INTO CreateTableTypes
(
	Id,
	String
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.String
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id


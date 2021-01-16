BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE CreateTableTypes
(
	String NVarChar(10)     NULL,
	Id     Int          NOT NULL
)

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

DROP TABLE CreateTableTypes


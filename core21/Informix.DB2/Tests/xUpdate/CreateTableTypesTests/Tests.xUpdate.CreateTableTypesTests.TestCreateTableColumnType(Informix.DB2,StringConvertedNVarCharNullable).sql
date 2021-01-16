BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE CreateTableTypes
(
	StringConverted NVarChar(255)     NULL,
	Id              Int           NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StringConverted VarChar(4) -- String
SET     @StringConverted = 'null'

INSERT INTO CreateTableTypes
(
	Id,
	StringConverted
)
VALUES
(
	@Id,
	@StringConverted
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @StringConverted VarChar(53) -- String
SET     @StringConverted = '[{"Item1":1,"Item2":"one"},{"Item1":2,"Item2":"two"}]'

INSERT INTO CreateTableTypes
(
	Id,
	StringConverted
)
VALUES
(
	@Id,
	@StringConverted
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE CreateTableTypes


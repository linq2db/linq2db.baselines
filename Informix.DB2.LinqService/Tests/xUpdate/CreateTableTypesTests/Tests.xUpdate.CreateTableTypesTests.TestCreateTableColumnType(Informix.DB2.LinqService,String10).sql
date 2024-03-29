﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CreateTableTypes

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS CreateTableTypes
(
	String NVarChar(10) NOT NULL,
	Id     Int          NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @String VarChar -- String
SET     @String = ''

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
DECLARE @String VarChar(7) -- String
SET     @String = 'test 10'

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

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CreateTableTypes


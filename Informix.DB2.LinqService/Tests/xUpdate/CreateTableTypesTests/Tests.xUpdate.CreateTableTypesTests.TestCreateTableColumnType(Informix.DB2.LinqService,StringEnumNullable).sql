﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CreateTableTypes

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS CreateTableTypes
(
	Id                 Int         NOT NULL,
	StringEnumNullable NVarChar(2)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @StringEnumNullable VarChar -- String
SET     @StringEnumNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	StringEnumNullable
)
VALUES
(
	@Id,
	@StringEnumNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @StringEnumNullable VarChar(2) -- String
SET     @StringEnumNullable = '40'

INSERT INTO CreateTableTypes
(
	Id,
	StringEnumNullable
)
VALUES
(
	@Id,
	@StringEnumNullable
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.StringEnumNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CreateTableTypes


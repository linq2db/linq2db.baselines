﻿BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE CreateTableTypes
(
	Id    Int NOT NULL,
	Int32 Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Int32 Integer(4) -- Int32
SET     @Int32 = 0

INSERT INTO CreateTableTypes
(
	Id,
	Int32
)
VALUES
(
	@Id,
	@Int32
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Int32 Integer(4) -- Int32
SET     @Int32 = 1

INSERT INTO CreateTableTypes
(
	Id,
	Int32
)
VALUES
(
	@Id,
	@Int32
)

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t1.Id, 
	t1.Int32
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE CreateTableTypes


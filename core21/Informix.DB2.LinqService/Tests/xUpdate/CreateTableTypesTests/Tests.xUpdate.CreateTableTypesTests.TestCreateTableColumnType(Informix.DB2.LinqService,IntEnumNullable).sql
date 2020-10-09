﻿BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE CreateTableTypes
(
	Id              Int NOT NULL,
	IntEnumNullable Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @IntEnumNullable Integer -- Int32
SET     @IntEnumNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	IntEnumNullable
)
VALUES
(
	@Id,
	@IntEnumNullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @IntEnumNullable Integer(4) -- Int32
SET     @IntEnumNullable = 60

INSERT INTO CreateTableTypes
(
	Id,
	IntEnumNullable
)
VALUES
(
	@Id,
	@IntEnumNullable
)

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	t1.Id, 
	t1.IntEnumNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE CreateTableTypes


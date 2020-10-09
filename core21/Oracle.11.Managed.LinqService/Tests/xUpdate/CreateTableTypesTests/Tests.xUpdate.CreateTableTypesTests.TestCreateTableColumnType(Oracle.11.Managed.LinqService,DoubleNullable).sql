﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE CreateTableTypes
(
	Id             Int   NOT NULL,
	DoubleNullable Float     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DoubleNullable BinaryDouble -- Double
SET     @DoubleNullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	DoubleNullable
)
VALUES
(
	:Id,
	:DoubleNullable
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DoubleNullable BinaryDouble -- Double
SET     @DoubleNullable = 4.1299999999999999D

INSERT INTO CreateTableTypes
(
	Id,
	DoubleNullable
)
VALUES
(
	:Id,
	:DoubleNullable
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	t1.Id, 
	t1.DoubleNullable
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE CreateTableTypes


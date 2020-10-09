﻿BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE CreateTableTypes
(
	Id      Int NOT NULL,
	IntEnum Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @IntEnum Int32
SET     @IntEnum = 11

INSERT INTO CreateTableTypes
(
	Id,
	IntEnum
)
VALUES
(
	:Id,
	:IntEnum
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IntEnum Int32
SET     @IntEnum = 60

INSERT INTO CreateTableTypes
(
	Id,
	IntEnum
)
VALUES
(
	:Id,
	:IntEnum
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	t1.Id, 
	t1.IntEnum
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE CreateTableTypes


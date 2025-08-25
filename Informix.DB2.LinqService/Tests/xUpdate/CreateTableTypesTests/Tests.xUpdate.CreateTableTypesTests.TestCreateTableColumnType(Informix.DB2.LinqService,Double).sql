﻿BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Double Double(8)
SET     @Double = 0

INSERT INTO CreateTableTypes
(
	Id,
	"Double"
)
VALUES
(
	@Id,
	@Double
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Double Double(8)
SET     @Double = 3.1400000000000001

INSERT INTO CreateTableTypes
(
	Id,
	"Double"
)
VALUES
(
	@Id,
	@Double
)

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	t1.Id,
	t1."Double"
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id


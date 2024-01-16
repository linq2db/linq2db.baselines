BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CreateTableTypes

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS CreateTableTypes
(
	Id        Int     NOT NULL,
	"Boolean" BOOLEAN NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Boolean Char(1) -- StringFixedLength
SET     @Boolean = 'f'

INSERT INTO CreateTableTypes
(
	Id,
	"Boolean"
)
VALUES
(
	@Id,
	@Boolean
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Boolean Char(1) -- StringFixedLength
SET     @Boolean = 't'

INSERT INTO CreateTableTypes
(
	Id,
	"Boolean"
)
VALUES
(
	@Id,
	@Boolean
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1."Boolean"
FROM
	CreateTableTypes t1
ORDER BY
	t1.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CreateTableTypes


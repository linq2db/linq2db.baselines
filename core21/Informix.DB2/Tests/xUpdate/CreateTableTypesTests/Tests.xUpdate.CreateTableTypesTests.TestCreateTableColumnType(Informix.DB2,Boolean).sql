BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE CreateTableTypes
(
	Id        Int     NOT NULL,
	"Boolean" BOOLEAN NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Boolean_1 Char(1) -- StringFixedLength
SET     @Boolean_1 = 'f'

INSERT INTO CreateTableTypes
(
	Id,
	"Boolean"
)
VALUES
(
	@Id,
	@Boolean_1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Boolean_1 Char(1) -- StringFixedLength
SET     @Boolean_1 = 't'

INSERT INTO CreateTableTypes
(
	Id,
	"Boolean"
)
VALUES
(
	@Id,
	@Boolean_1
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE CreateTableTypes


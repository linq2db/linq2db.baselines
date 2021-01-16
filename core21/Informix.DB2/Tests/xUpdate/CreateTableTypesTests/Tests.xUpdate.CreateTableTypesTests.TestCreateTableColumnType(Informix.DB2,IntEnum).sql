BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE CreateTableTypes
(
	Id      Int NOT NULL,
	IntEnum Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @IntEnum Integer(4) -- Int32
SET     @IntEnum = 11

INSERT INTO CreateTableTypes
(
	Id,
	IntEnum
)
VALUES
(
	@Id,
	@IntEnum
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @IntEnum Integer(4) -- Int32
SET     @IntEnum = 60

INSERT INTO CreateTableTypes
(
	Id,
	IntEnum
)
VALUES
(
	@Id,
	@IntEnum
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE CreateTableTypes


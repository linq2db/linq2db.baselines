BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE CreateTableTypes
(
	Id    Int    NOT NULL,
	Int64 BigInt NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Int64 BigInt(8) -- Int64
SET     @Int64 = 0

INSERT INTO CreateTableTypes
(
	Id,
	Int64
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Int64 BigInt(8) -- Int64
SET     @Int64 = 3

INSERT INTO CreateTableTypes
(
	Id,
	Int64
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE CreateTableTypes


BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE CreateTableTypes
(
	Id            Int NOT NULL,
	Int32Nullable Int     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Int32Nullable Integer -- Int32
SET     @Int32Nullable = NULL

INSERT INTO CreateTableTypes
(
	Id,
	Int32Nullable
)
VALUES
(
	@Id,
	@Int32Nullable
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Int32Nullable Integer(4) -- Int32
SET     @Int32Nullable = 2

INSERT INTO CreateTableTypes
(
	Id,
	Int32Nullable
)
VALUES
(
	@Id,
	@Int32Nullable
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE CreateTableTypes


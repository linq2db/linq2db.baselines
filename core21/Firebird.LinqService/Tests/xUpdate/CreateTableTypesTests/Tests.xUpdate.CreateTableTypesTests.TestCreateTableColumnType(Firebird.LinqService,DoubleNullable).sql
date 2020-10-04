BeforeExecute
-- Firebird

CREATE TABLE "CreateTableTypes"
(
	"Id"             Int   NOT NULL,
	"DoubleNullable" Float
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DoubleNullable Double
SET     @DoubleNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DoubleNullable"
)
VALUES
(
	@Id,
	@DoubleNullable
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DoubleNullable Double
SET     @DoubleNullable = 4.1299999999999999

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DoubleNullable"
)
VALUES
(
	@Id,
	@DoubleNullable
)

BeforeExecute
-- Firebird

DROP TABLE "CreateTableTypes"


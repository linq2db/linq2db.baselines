BeforeExecute
-- Firebird

CREATE TABLE "CreateTableTypes"
(
	"Id"              Int NOT NULL,
	"IntEnumNullable" Int
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @IntEnumNullable Integer -- Int32
SET     @IntEnumNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnumNullable"
)
VALUES
(
	@Id,
	@IntEnumNullable
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @IntEnumNullable Integer -- Int32
SET     @IntEnumNullable = 60

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnumNullable"
)
VALUES
(
	@Id,
	@IntEnumNullable
)

BeforeExecute
-- Firebird

DROP TABLE "CreateTableTypes"


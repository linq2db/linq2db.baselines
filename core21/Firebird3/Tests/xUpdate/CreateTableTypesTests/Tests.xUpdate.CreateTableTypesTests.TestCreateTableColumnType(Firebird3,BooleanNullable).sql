BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "CreateTableTypes"
(
	"Id"              Int  NOT NULL,
	"BooleanNullable" CHAR
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @BooleanNullable Boolean
SET     @BooleanNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"BooleanNullable"
)
VALUES
(
	@Id,
	@BooleanNullable
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @BooleanNullable Char(1) -- String
SET     @BooleanNullable = '1'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"BooleanNullable"
)
VALUES
(
	@Id,
	@BooleanNullable
)

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "CreateTableTypes"


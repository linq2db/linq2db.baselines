BeforeExecute
-- Firebird

CREATE TABLE "CreateTableTypes"
(
	"Id"              Int  NOT NULL,
	"BooleanNullable" CHAR
)

BeforeExecute
-- Firebird
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
-- Firebird
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
-- Firebird

SELECT 
	"t1"."Id", 
	"t1"."BooleanNullable"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

DROP TABLE "CreateTableTypes"


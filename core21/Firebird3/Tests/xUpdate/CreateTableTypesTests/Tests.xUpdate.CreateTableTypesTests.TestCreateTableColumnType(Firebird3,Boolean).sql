BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "CreateTableTypes"
(
	"Id"      Int  NOT NULL,
	"Boolean" CHAR NOT NULL
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Boolean_1 Char(1) -- String
SET     @Boolean_1 = '0'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Boolean"
)
VALUES
(
	@Id,
	@Boolean_1
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Boolean_1 Char(1) -- String
SET     @Boolean_1 = '1'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Boolean"
)
VALUES
(
	@Id,
	@Boolean_1
)

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "CreateTableTypes"


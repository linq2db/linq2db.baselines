BeforeExecute
-- Firebird

CREATE TABLE "CreateTableTypes"
(
	"String" VarChar(10) CHARACTER SET UNICODE_FSS NOT NULL,
	"Id"     Int                                   NOT NULL
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @String VarChar -- String
SET     @String = ''

INSERT INTO "CreateTableTypes"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @String VarChar(7) -- String
SET     @String = 'test 10'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- Firebird

SELECT 
	"t1"."Id", 
	"t1"."String"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

DROP TABLE "CreateTableTypes"


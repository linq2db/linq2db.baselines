BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "CreateTableTypes"
(
	"String" VarChar(10) CHARACTER SET UNICODE_FSS,
	"Id"     Int                                   NOT NULL
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @String VarChar -- String
SET     @String = NULL

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
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @String VarChar(9) -- String
SET     @String = 'test 10 n'

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
-- Firebird3 Firebird

SELECT 
	"t1"."Id", 
	"t1"."String"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "CreateTableTypes"


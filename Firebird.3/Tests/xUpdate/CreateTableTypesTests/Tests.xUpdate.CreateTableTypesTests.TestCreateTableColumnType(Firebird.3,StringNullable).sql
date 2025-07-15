BeforeExecute
-- Firebird.3 Firebird3
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
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @String VarChar(23) -- String
SET     @String = 'test max value nullable'

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
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."String"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"


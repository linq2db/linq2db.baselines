-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @String VarChar(14) -- String
SET     @String = 'test max value'

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

-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."String"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"


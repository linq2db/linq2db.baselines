BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Boolean Char -- String
SET     @Boolean = '0'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Boolean"
)
VALUES
(
	@Id,
	@Boolean
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Boolean Char -- String
SET     @Boolean = '1'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Boolean"
)
VALUES
(
	@Id,
	@Boolean
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Boolean"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"


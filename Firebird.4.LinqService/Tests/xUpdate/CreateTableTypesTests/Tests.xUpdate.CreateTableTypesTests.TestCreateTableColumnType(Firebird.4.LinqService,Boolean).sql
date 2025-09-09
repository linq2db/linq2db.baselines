BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Boolean Boolean
SET     @Boolean = FALSE

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
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Boolean Boolean
SET     @Boolean = TRUE

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
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"t1"."Id",
	"t1"."Boolean"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"


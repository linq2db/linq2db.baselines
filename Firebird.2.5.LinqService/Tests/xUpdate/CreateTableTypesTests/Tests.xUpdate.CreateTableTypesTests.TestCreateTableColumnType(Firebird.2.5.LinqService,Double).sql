BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Double Double
SET     @Double = 0

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Double"
)
VALUES
(
	@Id,
	@Double
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Double Double
SET     @Double = 3.1400000000000001

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Double"
)
VALUES
(
	@Id,
	@Double
)


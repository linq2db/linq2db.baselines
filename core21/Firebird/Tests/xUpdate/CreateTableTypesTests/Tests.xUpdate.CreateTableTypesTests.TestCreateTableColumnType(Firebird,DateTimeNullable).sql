BeforeExecute
-- Firebird

CREATE TABLE "CreateTableTypes"
(
	"Id"               Int       NOT NULL,
	"DateTimeNullable" TimeStamp
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DateTimeNullable TimeStamp -- DateTime
SET     @DateTimeNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTimeNullable"
)
VALUES
(
	@Id,
	@DateTimeNullable
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DateTimeNullable TimeStamp -- DateTime
SET     @DateTimeNullable = CAST('2018-11-25 01:02:03' AS timestamp)

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTimeNullable"
)
VALUES
(
	@Id,
	@DateTimeNullable
)

BeforeExecute
-- Firebird

DROP TABLE "CreateTableTypes"


BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "CreateTableTypes"
(
	"Id"       Int       NOT NULL,
	"DateTime" TimeStamp NOT NULL
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DateTime TimeStamp -- DateTime
SET     @DateTime = CAST('2000-01-01' AS timestamp)

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTime"
)
VALUES
(
	@Id,
	@DateTime
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DateTime TimeStamp -- DateTime
SET     @DateTime = CAST('2018-11-24 01:02:03' AS timestamp)

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTime"
)
VALUES
(
	@Id,
	@DateTime
)

BeforeExecute
-- Firebird3 Firebird

SELECT 
	"t1"."Id", 
	"t1"."DateTime"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "CreateTableTypes"


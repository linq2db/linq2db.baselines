-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DateTime TimeStamp -- DateTime
SET     @DateTime = TIMESTAMP '2000-01-01 00:00:00.0000'

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

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DateTime TimeStamp -- DateTime
SET     @DateTime = TIMESTAMP '2018-11-24 01:02:03.0000'

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

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."DateTime"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"


-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 104

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @Value Integer -- Int32
SET     @Value = 11

INSERT INTO "LinqDataTypes"
(
	ID,
	"IntValue"
)
VALUES
(
	@Id,
	@Value
)

-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 102
DECLARE @Value Integer -- Int32
SET     @Value = 22

INSERT INTO "LinqDataTypes"
(
	ID,
	"IntValue"
)
VALUES
(
	@Id,
	@Value
)

-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 103
DECLARE @Value Integer -- Int32
SET     @Value = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"IntValue"
)
VALUES
(
	@Id,
	@Value
)

-- Firebird.2.5 Firebird

SELECT
	"r".ID,
	"r"."IntValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID <= 103
ORDER BY
	"r".ID

-- Firebird.2.5 Firebird

SELECT
	"r".ID,
	"r"."IntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID <= 103
ORDER BY
	"r".ID

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 104

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p


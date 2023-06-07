﻿BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 105

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @Id

BeforeExecute
-- Firebird
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

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 102
DECLARE @Value Integer -- Int32
SET     @Value = 0

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

BeforeExecute
-- Firebird
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

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 104
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

BeforeExecute
-- Firebird

SELECT
	"r".ID,
	"r"."IntValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID <= 104
ORDER BY
	"r".ID

BeforeExecute
-- Firebird

SELECT
	"r".ID,
	"r"."IntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID <= 104
ORDER BY
	"r".ID

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 105

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @Id


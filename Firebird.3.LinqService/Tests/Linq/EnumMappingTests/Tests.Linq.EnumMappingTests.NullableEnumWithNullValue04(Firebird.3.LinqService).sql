﻿BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 105

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @Id

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @Value Char(2) -- String
SET     @Value = '11'

INSERT INTO "LinqDataTypes"
(
	ID,
	"StringValue"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS CHAR(2))
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 102
DECLARE @Value Char(2) -- String
SET     @Value = '22'

INSERT INTO "LinqDataTypes"
(
	ID,
	"StringValue"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS CHAR(2))
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 103
DECLARE @Value Char -- String
SET     @Value = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"StringValue"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS CHAR(8191))
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 104
DECLARE @Value Char -- String
SET     @Value = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"StringValue"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Value AS CHAR(8191))
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r".ID,
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID <= 104
ORDER BY
	"r".ID

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 105

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @Id


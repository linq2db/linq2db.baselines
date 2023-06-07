﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 104

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @Id

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 101
DECLARE @Value Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 102
DECLARE @Value Integer(4) -- Int32
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

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

SELECT
	"r".ID,
	"r"."IntValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID <= 103
ORDER BY
	"r".ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 104

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @Id


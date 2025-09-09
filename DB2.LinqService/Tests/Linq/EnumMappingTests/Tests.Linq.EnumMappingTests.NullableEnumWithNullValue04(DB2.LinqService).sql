BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @p Integer(4) -- Int32
SET     @p = 105

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 101
DECLARE @Value Char(2) -- StringFixedLength
SET     @Value = '11'

INSERT INTO "LinqDataTypes"
(
	ID,
	"StringValue"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 102
DECLARE @Value Char(2) -- StringFixedLength
SET     @Value = '22'

INSERT INTO "LinqDataTypes"
(
	ID,
	"StringValue"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 103
DECLARE @Value Char -- StringFixedLength
SET     @Value = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"StringValue"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 104
DECLARE @Value Char -- StringFixedLength
SET     @Value = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"StringValue"
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

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
-- DB2 DB2.LUW DB2LUW (asynchronously)

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
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @p Integer(4) -- Int32
SET     @p = 105

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @p


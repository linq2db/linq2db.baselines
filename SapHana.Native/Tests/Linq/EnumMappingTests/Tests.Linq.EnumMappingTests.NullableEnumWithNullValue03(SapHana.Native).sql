-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 104

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < :"p"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @Value NVarChar(2) -- StringFixedLength
SET     @Value = '11'

INSERT INTO "LinqDataTypes"
(
	"ID",
	"StringValue"
)
VALUES
(
	:"Id",
	:"Value"
)

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 102
DECLARE @Value NVarChar(2) -- StringFixedLength
SET     @Value = '22'

INSERT INTO "LinqDataTypes"
(
	"ID",
	"StringValue"
)
VALUES
(
	:"Id",
	:"Value"
)

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 103
DECLARE @Value NVarChar -- StringFixedLength
SET     @Value = NULL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"StringValue"
)
VALUES
(
	:"Id",
	:"Value"
)

-- SapHana.Native SapHana
SELECT
	"r"."ID",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" <= 103
ORDER BY
	"r"."ID"

-- SapHana.Native SapHana
SELECT
	"r"."ID",
	"r"."IntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" <= 103
ORDER BY
	"r"."ID"

-- SapHana.Native SapHana
DECLARE @p Integer -- Int32
SET     @p = 104

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r"."ID" >= 101 AND "r"."ID" < :"p"


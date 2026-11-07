-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DateTimeNullable TimeStamp -- DateTime2
SET     @DateTimeNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTimeNullable"
)
VALUES
(
	:"Id",
	:"DateTimeNullable"
)

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DateTimeNullable TimeStamp -- DateTime2
SET     @DateTimeNullable = TIMESTAMP '2018-11-25 01:02:03.0000000'

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTimeNullable"
)
VALUES
(
	:"Id",
	:"DateTimeNullable"
)

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."DateTimeNullable"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"


-- SapHana.Native SapHana
DECLARE @Date Date
SET     @Date = TIMESTAMP '2021-01-01 00:00:00.0000000'

INSERT INTO "DateOnlyTable"
(
	"Date"
)
VALUES
(
	:"Date"
)

-- SapHana.Native SapHana
SELECT
	"t1"."Date"
FROM
	"DateOnlyTable" "t1"
LIMIT 2


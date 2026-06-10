-- Firebird.3 Firebird3
DECLARE @Date Date
SET     @Date = DATE '2021-01-01'

INSERT INTO "DateOnlyTable"
(
	"Date"
)
VALUES
(
	@Date
)

-- Firebird.3 Firebird3

SELECT
	"t1"."Date"
FROM
	"DateOnlyTable" "t1"
FETCH NEXT 2 ROWS ONLY


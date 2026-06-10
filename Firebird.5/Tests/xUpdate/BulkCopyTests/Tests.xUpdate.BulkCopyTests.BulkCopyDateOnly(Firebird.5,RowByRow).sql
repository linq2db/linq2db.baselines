-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4

SELECT
	"t1"."Date"
FROM
	"DateOnlyTable" "t1"
FETCH NEXT 2 ROWS ONLY


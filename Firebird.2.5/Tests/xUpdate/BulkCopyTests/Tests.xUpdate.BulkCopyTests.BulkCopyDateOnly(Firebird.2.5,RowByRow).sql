-- Firebird.2.5 Firebird
DECLARE @Date Date
SET     @Date = CAST('2021-01-01' AS date)

INSERT INTO "DateOnlyTable"
(
	"Date"
)
VALUES
(
	@Date
)

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Date"
FROM
	"DateOnlyTable" "t1"


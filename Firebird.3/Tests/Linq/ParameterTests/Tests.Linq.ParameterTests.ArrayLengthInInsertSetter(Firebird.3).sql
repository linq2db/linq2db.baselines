-- Firebird.3 Firebird3
DECLARE @arr Integer -- Int32
SET     @arr = 3

INSERT INTO "ArrayLengthTable"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	@arr
)

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"ArrayLengthTable" "t1"
FETCH NEXT 2 ROWS ONLY


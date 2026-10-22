-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4
SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"ArrayLengthTable" "t1"
FETCH NEXT 2 ROWS ONLY


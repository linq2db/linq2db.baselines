-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird
SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"ArrayLengthTable" "t1"


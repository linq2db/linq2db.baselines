BeforeExecute
-- Firebird

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID > 1000

BeforeExecute
-- Firebird
DECLARE @arr Binary
SET     @arr = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"BoolValue",
	"BinaryValue"
)
VALUES
(
	1001,
	1,
	@arr
)

BeforeExecute
-- Firebird

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID > 1000


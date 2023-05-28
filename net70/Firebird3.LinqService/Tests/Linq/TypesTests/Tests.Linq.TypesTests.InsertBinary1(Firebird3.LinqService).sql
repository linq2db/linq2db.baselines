BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID > 1000

BeforeExecute
-- Firebird3 Firebird
DECLARE @data Binary
SET     @data = NULL

INSERT INTO "LinqDataTypes"
(
	ID,
	"BinaryValue",
	"BoolValue"
)
VALUES
(
	1001,
	@data,
	1
)

BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID > 1000


-- Firebird.2.5 Firebird

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID > 1000

-- Firebird.2.5 Firebird
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
	'1'
)

-- Firebird.2.5 Firebird

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID > 1000


BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

UPDATE
	"LinqDataTypes" "p"
SET
	"BoolValue" = '1',
	"DateTimeValue" = LOCALTIMESTAMP
WHERE
	"p".ID = 100000


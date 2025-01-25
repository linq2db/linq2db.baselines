﻿BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @arr Binary(4)
SET     @arr = X'01020304'

INSERT INTO "LinqDataTypes"
(
	ID,
	"BoolValue",
	"BinaryValue"
)
VALUES
(
	1001,
	'1',
	CAST(@arr AS VARCHAR(4) CHARACTER SET OCTETS)
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t".ID,
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."BinaryValue",
	"t"."SmallIntValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID = 1001

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000


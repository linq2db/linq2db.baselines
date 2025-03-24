﻿BeforeExecute
--  Firebird.3 Firebird3

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000

BeforeExecute
--  Firebird.3 Firebird3

INSERT INTO "LinqDataTypes"
(
	ID,
	"BoolValue",
	"BinaryValue"
)
VALUES
(
	1001,
	TRUE,
	NULL
)

BeforeExecute
--  Firebird.3 Firebird3

SELECT
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
FETCH NEXT 2 ROWS ONLY

BeforeExecute
--  Firebird.3 Firebird3

DELETE FROM
	"LinqDataTypes" "t"
WHERE
	"t".ID > 1000


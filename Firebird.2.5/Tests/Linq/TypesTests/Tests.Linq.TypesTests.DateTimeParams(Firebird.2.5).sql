﻿BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @dateTime TimeStamp -- DateTime
SET     @dateTime = CAST('1992-01-11 01:11:21.100' AS timestamp)

SELECT FIRST 1
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > @dateTime AND "t"."DateTimeValue" IS NOT NULL

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @dateTime TimeStamp -- DateTime
SET     @dateTime = CAST('1993-01-11 01:11:21.100' AS timestamp)

SELECT FIRST 1
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" > @dateTime AND "t"."DateTimeValue" IS NOT NULL


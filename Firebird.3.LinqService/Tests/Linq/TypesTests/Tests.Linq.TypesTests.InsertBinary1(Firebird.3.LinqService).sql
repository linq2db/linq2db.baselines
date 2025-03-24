﻿BeforeExecute
--  Firebird.3 Firebird3

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID > 1000

BeforeExecute
--  Firebird.3 Firebird3
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
	TRUE
)

BeforeExecute
--  Firebird.3 Firebird3

DELETE FROM
	"LinqDataTypes" "t1"
WHERE
	"t1".ID > 1000


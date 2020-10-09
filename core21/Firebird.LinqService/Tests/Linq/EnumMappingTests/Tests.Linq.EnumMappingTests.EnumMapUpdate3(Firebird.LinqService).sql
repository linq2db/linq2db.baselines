BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @Id

BeforeExecute
-- Firebird

INSERT INTO "LinqDataTypes"
(
	ID,
	"BigIntValue"
)
VALUES
(
	101,
	11
)

BeforeExecute
-- Firebird

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."BigIntValue" = 12
WHERE
	"LinqDataTypes".ID = 101 AND "LinqDataTypes"."BigIntValue" = 11

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	"r"."BigIntValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101 AND "r"."BigIntValue" = 12

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @Id


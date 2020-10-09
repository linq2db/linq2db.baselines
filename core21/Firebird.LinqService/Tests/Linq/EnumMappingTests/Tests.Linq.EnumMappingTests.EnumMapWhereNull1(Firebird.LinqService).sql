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
	ID
)
VALUES
(
	101
)

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	"r"."BigIntValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101 AND "r"."BigIntValue" IS NULL

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @Id


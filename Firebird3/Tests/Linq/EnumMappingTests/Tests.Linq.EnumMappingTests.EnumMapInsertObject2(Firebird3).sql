BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @Id

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 101
DECLARE @TestField BigInt -- Int64
SET     @TestField = 12
DECLARE @Int32Field Integer -- Int32
SET     @Int32Field = 0

INSERT INTO "LinqDataTypes"
(
	ID,
	"BigIntValue",
	"IntValue"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@TestField AS BigInt),
	CAST(@Int32Field AS Int)
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101 AND "r"."BigIntValue" = 12

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @Id


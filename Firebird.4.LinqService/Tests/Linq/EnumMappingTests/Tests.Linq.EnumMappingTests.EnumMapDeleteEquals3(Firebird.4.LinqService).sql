BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @Id

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "LinqDataTypes"
(
	ID,
	"BigIntValue"
)
VALUES
(
	101,
	12
)

BeforeExecute
-- Firebird.4 Firebird4

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID = 101 AND "r"."BigIntValue" = 12

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" "r"
WHERE
	"r".ID >= 101 AND "r".ID < @Id


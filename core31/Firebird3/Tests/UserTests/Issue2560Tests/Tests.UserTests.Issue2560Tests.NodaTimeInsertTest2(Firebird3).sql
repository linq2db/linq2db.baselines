BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "DataClass"
(
	"Id"    Int       NOT NULL,
	"Value" TimeStamp NOT NULL
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @Value_1 TimeStamp -- DateTime
SET     @Value_1 = CAST('2020-02-29 17:54:55.123' AS timestamp)

INSERT INTO "DataClass"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"DataClass" "t1"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DataClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DataClass"';
END


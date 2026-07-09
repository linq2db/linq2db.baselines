-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Guid
SET     @Value = X'6F9619FF8B86D011B42D00C04FC964FF'

INSERT INTO "FbGuidBinary"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Id",
	"t1"."Value"
FROM
	"FbGuidBinary" "t1"


-- Firebird.5 Firebird4
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

-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"FbGuidBinary" "t1"
FETCH NEXT 2 ROWS ONLY


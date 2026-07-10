-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Char -- String
SET     @Value = X'6F9619FF8B86D011B42D00C04FC964FF'

INSERT INTO "FbGuidText"
(
	"Id",
	"Value"
)
VALUES
(
	@Id,
	@Value
)

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"FbGuidText" "t1"
FETCH NEXT 2 ROWS ONLY


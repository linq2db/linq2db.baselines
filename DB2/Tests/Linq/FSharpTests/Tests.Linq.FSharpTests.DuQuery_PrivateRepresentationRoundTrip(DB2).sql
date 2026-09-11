-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Key Integer(4) -- Int32
SET     @Key = 7

INSERT INTO "PrivateDuRow"
(
	"Id",
	"Key"
)
VALUES
(
	@Id,
	@Key
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"x"."Key"
FROM
	"PrivateDuRow" "x"
ORDER BY
	"x"."Id"


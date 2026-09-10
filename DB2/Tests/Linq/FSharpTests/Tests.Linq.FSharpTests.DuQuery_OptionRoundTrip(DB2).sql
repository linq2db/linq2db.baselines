-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Key Integer(4) -- Int32
SET     @Key = 10

INSERT INTO "DuOptRow"
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
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Key Integer -- Int32
SET     @Key = NULL

INSERT INTO "DuOptRow"
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
	"DuOptRow" "x"
ORDER BY
	"x"."Id"


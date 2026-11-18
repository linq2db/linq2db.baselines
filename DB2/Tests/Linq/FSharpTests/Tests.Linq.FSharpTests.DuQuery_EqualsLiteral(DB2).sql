-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Key Integer(4) -- Int32
SET     @Key = 10

INSERT INTO "DuRow"
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
DECLARE @Key Integer(4) -- Int32
SET     @Key = 20

INSERT INTO "DuRow"
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
DECLARE @Key Integer(4) -- Int32
SET     @Key = 10

SELECT
	"x"."Id",
	"x"."Key"
FROM
	"DuRow" "x"
WHERE
	"x"."Key" = @Key


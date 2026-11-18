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
DECLARE @Oid Integer(4) -- Int32
SET     @Oid = 1
DECLARE @RefId Integer(4) -- Int32
SET     @RefId = 1

INSERT INTO "DuOuter"
(
	"Oid",
	"RefId"
)
VALUES
(
	@Oid,
	@RefId
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Oid Integer(4) -- Int32
SET     @Oid = 2
DECLARE @RefId Integer(4) -- Int32
SET     @RefId = 99

INSERT INTO "DuOuter"
(
	"Oid",
	"RefId"
)
VALUES
(
	@Oid,
	@RefId
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"arg2"."Key"
FROM
	"DuOuter" "tupledArg"
		LEFT JOIN "DuRow" "arg2" ON "tupledArg"."RefId" = "arg2"."Id"
ORDER BY
	"tupledArg"."Oid"


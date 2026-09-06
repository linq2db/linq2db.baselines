-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Key Integer -- Int32
SET     @Key = 10

INSERT INTO "StructDuRow"
(
	"Id",
	"Key"
)
VALUES
(
	@Id,
	@Key
)

-- Firebird.3 Firebird3
DECLARE @Oid Integer -- Int32
SET     @Oid = 1
DECLARE @RefId Integer -- Int32
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

-- Firebird.3 Firebird3
DECLARE @Oid Integer -- Int32
SET     @Oid = 2
DECLARE @RefId Integer -- Int32
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

-- Firebird.3 Firebird3
SELECT
	"arg2"."Key"
FROM
	"DuOuter" "tupledArg"
		LEFT JOIN "StructDuRow" "arg2" ON "tupledArg"."RefId" = "arg2"."Id"
ORDER BY
	"tupledArg"."Oid"


-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5
DECLARE @Value VarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyRefreshNoLock"
(
	"Id",
	"Stamp",
	"Value"
)
VALUES
(
	@Id,
	@Stamp,
	@Value
)

-- Firebird.5 Firebird4
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5
DECLARE @Value VarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"ConcurrencyRefreshNoLock" "obj"
SET
	"Stamp" = CAST(@Stamp AS Int),
	"Value" = CAST(@Value AS VARCHAR(7))
WHERE
	"obj"."Id" = @Id

-- Firebird.5 Firebird4
SELECT
	"r"."Id",
	"r"."Stamp",
	"r"."Value"
FROM
	"ConcurrencyRefreshNoLock" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY


-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5
DECLARE @Value VarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyRefreshAutoInc"
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

-- Firebird.3 Firebird3
DECLARE @Value VarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5

UPDATE
	"ConcurrencyRefreshAutoInc" "obj"
SET
	"Stamp" = "obj"."Stamp" + 1,
	"Value" = CAST(@Value AS VARCHAR(7))
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1

SELECT
	"obj"."Stamp"
FROM
	"ConcurrencyRefreshAutoInc" "obj"
WHERE
	"obj"."Id" = @Id
FETCH NEXT 1 ROWS ONLY

-- Firebird.3 Firebird3
SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyRefreshAutoInc" "t1"
FETCH NEXT 2 ROWS ONLY


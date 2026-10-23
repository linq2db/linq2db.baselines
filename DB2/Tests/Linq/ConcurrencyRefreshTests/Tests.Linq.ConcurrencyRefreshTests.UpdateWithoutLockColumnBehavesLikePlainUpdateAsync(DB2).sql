-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
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

-- DB2 DB2.LUW DB2LUW
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = 5
DECLARE @Value VarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"ConcurrencyRefreshNoLock" "obj"
SET
	"Stamp" = CAST(@Stamp AS Int),
	"Value" = CAST(@Value AS NVarChar(7))
WHERE
	"obj"."Id" = @Id

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id",
	"r"."Stamp",
	"r"."Value"
FROM
	"ConcurrencyRefreshNoLock" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY


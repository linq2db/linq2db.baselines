-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
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

-- DB2 DB2.LUW DB2LUW
DECLARE @Value VarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Stamp Integer(4) -- Int32
SET     @Stamp = 5

UPDATE
	"ConcurrencyRefreshAutoInc" "obj"
SET
	"Stamp" = "obj"."Stamp" + 1,
	"Value" = CAST(@Value AS NVarChar(7))
WHERE
	"obj"."Id" = @Id AND "obj"."Stamp" = @Stamp

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

SELECT
	"obj"."Stamp"
FROM
	"ConcurrencyRefreshAutoInc" "obj"
WHERE
	"obj"."Id" = @Id
FETCH NEXT 1 ROWS ONLY

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyRefreshAutoInc" "t1"
FETCH NEXT 2 ROWS ONLY


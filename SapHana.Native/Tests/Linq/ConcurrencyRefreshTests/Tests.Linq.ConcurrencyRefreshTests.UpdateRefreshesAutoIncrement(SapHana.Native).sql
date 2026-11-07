-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyRefreshAutoInc"
(
	"Id",
	"Stamp",
	"Value"
)
VALUES
(
	:"Id",
	:"Stamp",
	:"Value"
)

-- SapHana.Native SapHana
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5

UPDATE
	"ConcurrencyRefreshAutoInc" "obj"
SET
	"Stamp" = "obj"."Stamp" + 1,
	"Value" = :"Value"
WHERE
	"obj"."Id" = :"Id" AND "obj"."Stamp" = :"Stamp"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1

SELECT
	"obj"."Stamp"
FROM
	"ConcurrencyRefreshAutoInc" "obj"
WHERE
	"obj"."Id" = :"Id"
LIMIT 1

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyRefreshAutoInc" "t1"
LIMIT 2


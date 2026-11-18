-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyRefreshNoLock"
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
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'updated'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"ConcurrencyRefreshNoLock" "obj"
SET
	"Stamp" = :"Stamp",
	"Value" = :"Value"
WHERE
	"obj"."Id" = :"Id"

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Stamp",
	"r"."Value"
FROM
	"ConcurrencyRefreshNoLock" "r"
WHERE
	"r"."Id" = 1
LIMIT 2


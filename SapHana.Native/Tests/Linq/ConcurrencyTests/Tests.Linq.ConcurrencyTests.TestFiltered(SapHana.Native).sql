-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyFiltered"
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
SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyFiltered" "t1"

-- SapHana.Native SapHana
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyFiltered" "r"
SET
	"Stamp" = "r"."Stamp" + 1,
	"Value" = :"Value"
WHERE
	"r"."Id" = 2 AND "r"."Id" = :"Id" AND "r"."Stamp" = :"Stamp"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyFiltered" "t1"

-- SapHana.Native SapHana
DECLARE @Value NVarChar(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyFiltered" "r"
SET
	"Stamp" = "r"."Stamp" + 1,
	"Value" = :"Value"
WHERE
	"r"."Id" = 1 AND "r"."Id" = :"Id" AND "r"."Stamp" = :"Stamp"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyFiltered" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyFiltered" "r"
WHERE
	"r"."Id" = 2 AND "r"."Id" = :"Id" AND "r"."Stamp" = :"Stamp"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyFiltered" "t1"

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyFiltered" "r"
WHERE
	"r"."Id" = 1 AND "r"."Id" = :"Id" AND "r"."Stamp" = :"Stamp"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Stamp",
	"t1"."Value"
FROM
	"ConcurrencyFiltered" "t1"


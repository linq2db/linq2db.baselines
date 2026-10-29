-- SapHana.Native SapHana
DECLARE @Value4 VarChar(36) -- AnsiStringFixedLength
SET     @Value4 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value4" = :"Value4"
WHERE
	"t1"."Id" = :"id"

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	"t1"."Value4"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = :"id"
LIMIT 2

-- SapHana.Native SapHana
DECLARE @Value4 VarChar(36) -- AnsiStringFixedLength
SET     @Value4 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value4" = :"Value4"
WHERE
	"t1"."Id" = :"id"

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	"t1"."Value4"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = :"id"
LIMIT 2


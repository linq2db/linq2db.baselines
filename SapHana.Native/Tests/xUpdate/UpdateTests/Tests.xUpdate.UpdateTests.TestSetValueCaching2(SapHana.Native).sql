-- SapHana.Native SapHana
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 11
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value2" = :"Value2"
WHERE
	"t1"."Id" = :"id"

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	"t1"."Value2"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = :"id"
LIMIT 2

-- SapHana.Native SapHana
DECLARE @Value2 Integer -- Int32
SET     @Value2 = 12
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value2" = :"Value2"
WHERE
	"t1"."Id" = :"id"

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	"t1"."Value2"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = :"id"
LIMIT 2


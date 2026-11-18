-- SapHana.Native SapHana
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 7
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value3" = :"Value3"
WHERE
	"t1"."Id" = :"id"

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	"t1"."Value3"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = :"id"
LIMIT 2

-- SapHana.Native SapHana
DECLARE @Value3 Integer -- Int32
SET     @Value3 = 8
DECLARE @id Integer -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value3" = :"Value3"
WHERE
	"t1"."Id" = :"id"

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	"t1"."Value3"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = :"id"
LIMIT 2


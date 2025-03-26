BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value1 Char(36) -- AnsiStringFixedLength
SET     @Value1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value1" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	"t1"."Value1"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = ?
LIMIT 2

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Value1 Char(36) -- AnsiStringFixedLength
SET     @Value1 = 'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @id Int -- Int32
SET     @id = 1

UPDATE
	"UpdateSetTest" "t1"
SET
	"Value1" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	"t1"."Value1"
FROM
	"UpdateSetTest" "t1"
WHERE
	"t1"."Id" = ?
LIMIT 2


-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'alice'
DECLARE @Version Int -- Int32
SET     @Version = 1
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'alice'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"EntityUpdateTest" "t"
SET
	"Name" = ?,
	"Version" = ?,
	"UpdatedAt" = ?,
	"UpdatedBy" = ?
WHERE
	"t"."Id" = ?

-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Version",
	"t1"."UpdatedAt",
	"t1"."UpdatedBy"
FROM
	"EntityUpdateTest" "t1"
LIMIT 2


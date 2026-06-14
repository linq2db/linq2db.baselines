-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'inc'
DECLARE @Version Int -- Int32
SET     @Version = 3
DECLARE @CreatedAt DateTime
SET     @CreatedAt = NULL
DECLARE @CreatedBy NVarChar -- String
SET     @CreatedBy = NULL
DECLARE @UpdatedAt DateTime
SET     @UpdatedAt = NULL
DECLARE @UpdatedBy NVarChar -- String
SET     @UpdatedBy = NULL
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"UpsertTest" "t1"
SET
	"Name" = ?,
	"Version" = "t1"."Version" + ?,
	"CreatedAt" = ?,
	"CreatedBy" = ?,
	"UpdatedAt" = ?,
	"UpdatedBy" = ?
WHERE
	"t1"."Id" = ?

-- SapHana.Odbc SapHanaOdbc

SELECT
	"r"."Id",
	"r"."Name",
	"r"."Version",
	"r"."CreatedAt",
	"r"."CreatedBy",
	"r"."UpdatedAt",
	"r"."UpdatedBy"
FROM
	"UpsertTest" "r"
WHERE
	"r"."Id" = 1
LIMIT 2


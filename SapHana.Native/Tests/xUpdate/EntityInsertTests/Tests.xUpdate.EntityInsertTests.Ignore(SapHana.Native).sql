-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'n'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt TimeStamp -- DateTime2
SET     @CreatedAt = NULL

INSERT INTO "EntityInsertTest"
(
	"Id",
	"Name",
	"Version",
	"CreatedAt"
)
VALUES
(
	:"Id",
	:"Name",
	:"Version",
	:"CreatedAt"
)

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Version",
	"t1"."CreatedAt",
	"t1"."CreatedBy"
FROM
	"EntityInsertTest" "t1"
LIMIT 2


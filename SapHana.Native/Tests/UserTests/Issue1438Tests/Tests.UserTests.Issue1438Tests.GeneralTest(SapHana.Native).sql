-- SapHana.Native SapHana
DECLARE @Has TinyInt -- Byte
SET     @Has = 1

INSERT INTO "Issue1438"
(
	"Has"
)
VALUES
(
	:"Has"
)

-- SapHana.Native SapHana
SELECT
	CURRENT_IDENTITY_VALUE()
FROM DUMMY

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	"t1"."Id",
	"t1"."Has"
FROM
	"Issue1438" "t1"
WHERE
	"t1"."Id" = :"id"
LIMIT 2


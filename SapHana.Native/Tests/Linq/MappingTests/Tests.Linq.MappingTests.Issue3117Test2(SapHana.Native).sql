-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 5

INSERT INTO "User"
(
	"Id"
)
VALUES
(
	:"Id"
)

-- SapHana.Native SapHana
SELECT
	CURRENT_IDENTITY_VALUE()
FROM DUMMY

-- SapHana.Native SapHana
SELECT
	"t1"."Id"
FROM
	"User" "t1"

-- SapHana.Native SapHana
DECLARE @userId Integer -- Int32
SET     @userId = 5

SELECT
	"u"."Id"
FROM
	"User" "u"
WHERE
	"u"."Id" = :"userId"
LIMIT 1

-- SapHana.Native SapHana
SELECT
	"u"."Id"
FROM
	"User" "u"
WHERE
	"u"."Id" IN (5)
LIMIT 1


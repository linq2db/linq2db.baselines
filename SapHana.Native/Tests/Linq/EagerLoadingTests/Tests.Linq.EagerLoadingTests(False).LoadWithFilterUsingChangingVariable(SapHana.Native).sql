-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "LoadWithFilterRecord"
(
	"Id"
)
VALUES
(
	:"Id"
)

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 11

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."TestId"
FROM
	"LoadWithFilterRecord" "m_1"
		INNER JOIN "LoadWithFilterRecordItem" "d" ON "m_1"."Id" = "d"."TestId"
WHERE
	"d"."Id" = :"id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id"
FROM
	"LoadWithFilterRecord" "t1"

-- SapHana.Native SapHana
DECLARE @id Integer -- Int32
SET     @id = 12

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."TestId"
FROM
	"LoadWithFilterRecord" "m_1"
		INNER JOIN "LoadWithFilterRecordItem" "d" ON "m_1"."Id" = "d"."TestId"
WHERE
	"d"."Id" = :"id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id"
FROM
	"LoadWithFilterRecord" "t1"


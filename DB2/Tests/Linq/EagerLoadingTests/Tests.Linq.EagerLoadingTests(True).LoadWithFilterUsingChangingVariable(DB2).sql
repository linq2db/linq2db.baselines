-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "LoadWithFilterRecord"
(
	"Id"
)
VALUES
(
	@Id
)

-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 11

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."TestId"
FROM
	"LoadWithFilterRecord" "m_1"
		INNER JOIN "LoadWithFilterRecordItem" "d" ON "m_1"."Id" = "d"."TestId"
WHERE
	"d"."Id" = @id

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id"
FROM
	"LoadWithFilterRecord" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 12

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."TestId"
FROM
	"LoadWithFilterRecord" "m_1"
		INNER JOIN "LoadWithFilterRecordItem" "d" ON "m_1"."Id" = "d"."TestId"
WHERE
	"d"."Id" = @id

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id"
FROM
	"LoadWithFilterRecord" "t1"


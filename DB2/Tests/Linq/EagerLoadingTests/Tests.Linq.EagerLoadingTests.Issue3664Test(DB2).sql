BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

INSERT INTO "Test3664"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 11

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."TestId"
FROM
	"Test3664" "m_1"
		INNER JOIN "Test3664Item" "d" ON "m_1"."Id" = "d"."TestId"
WHERE
	"d"."Id" = @id

BeforeExecute
DisposeTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id"
FROM
	"Test3664" "t1"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @id Integer(4) -- Int32
SET     @id = 12

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."TestId"
FROM
	"Test3664" "m_1"
		INNER JOIN "Test3664Item" "d" ON "m_1"."Id" = "d"."TestId"
WHERE
	"d"."Id" = @id

BeforeExecute
DisposeTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id"
FROM
	"Test3664" "t1"


BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 10
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 100

SELECT
	"m_1"."Id",
	"m_1"."Id_1",
	"d_1"."Id",
	"d_1"."SubOrderId",
	"d_1"."Code",
	"d_1"."Date",
	"d_1"."IsActive"
FROM
	(
		SELECT DISTINCT
			"d"."Id",
			"t2"."Id" as "Id_1"
		FROM
			(
				SELECT DISTINCT
					"t1"."Id"
				FROM
					(
						SELECT FIRST @p SKIP @p_1
							"x"."Id"
						FROM
							"Order" "x"
						WHERE
							"x"."Name" STARTING WITH 'cat'
						ORDER BY
							"x"."Id"
					) "t1"
			) "t2"
				INNER JOIN "SubOrder" "d" ON "t2"."Id" = "d"."OrderId"
	) "m_1"
		INNER JOIN "SubOrderDetail" "d_1" ON "m_1"."Id" = "d_1"."SubOrderId"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 10
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 100

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."OrderId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			(
				SELECT FIRST @p SKIP @p_1
					"x"."Id"
				FROM
					"Order" "x"
				WHERE
					"x"."Name" STARTING WITH 'cat'
				ORDER BY
					"x"."Id"
			) "t1"
	) "m_1"
		INNER JOIN "SubOrder" "d" ON "m_1"."Id" = "d"."OrderId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 10
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 100

SELECT FIRST @p SKIP @p_1
	"x"."Id",
	"x"."Name"
FROM
	"Order" "x"
WHERE
	"x"."Name" STARTING WITH 'cat'
ORDER BY
	"x"."Id"


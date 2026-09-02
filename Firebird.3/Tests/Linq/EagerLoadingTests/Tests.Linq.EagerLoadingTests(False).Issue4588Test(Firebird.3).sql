-- Firebird.3 Firebird3
DECLARE @skip Integer -- Int32
SET     @skip = 100
DECLARE @take Integer -- Int32
SET     @take = 10

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
						SELECT
							"x"."Id"
						FROM
							"Order" "x"
						WHERE
							"x"."Name" STARTING WITH 'cat'
						ORDER BY
							"x"."Id"
						OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
					) "t1"
			) "t2"
				INNER JOIN "SubOrder" "d" ON "t2"."Id" = "d"."OrderId"
	) "m_1"
		INNER JOIN "SubOrderDetail" "d_1" ON "m_1"."Id" = "d_1"."SubOrderId"

-- Firebird.3 Firebird3
DECLARE @skip Integer -- Int32
SET     @skip = 100
DECLARE @take Integer -- Int32
SET     @take = 10

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
				SELECT
					"x"."Id"
				FROM
					"Order" "x"
				WHERE
					"x"."Name" STARTING WITH 'cat'
				ORDER BY
					"x"."Id"
				OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
			) "t1"
	) "m_1"
		INNER JOIN "SubOrder" "d" ON "m_1"."Id" = "d"."OrderId"

-- Firebird.3 Firebird3
DECLARE @skip Integer -- Int32
SET     @skip = 100
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	"x"."Id",
	"x"."Name"
FROM
	"Order" "x"
WHERE
	"x"."Name" STARTING WITH 'cat'
ORDER BY
	"x"."Id"
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 


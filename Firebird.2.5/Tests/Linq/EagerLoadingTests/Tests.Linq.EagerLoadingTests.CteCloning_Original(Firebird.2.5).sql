BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.2.5 Firebird

WITH RECURSIVE "cte" ("Value2", "Value4")
AS
(
	SELECT
		"r"."Value2",
		"r"."Value4"
	FROM
		"CteTable" "r"
	UNION ALL
	SELECT
		"r_1"."Value2",
		"r_1"."Value4"
	FROM
		"cte" "t1"
			INNER JOIN "CteTable" "r_1" ON "t1"."Value2" = "r_1"."Value3"
)
SELECT
	"m_1"."Id",
	"d_1"."Id",
	"d_1"."Value1",
	"d_1"."Value2",
	"d_1"."Value3",
	"d_1"."Value4",
	"d_1"."Value5"
FROM
	(
		SELECT DISTINCT
			"d"."Id"
		FROM
			"cte" "t2"
				LEFT JOIN "CteChildTable" "d" ON "t2"."Value4" = "d"."Id"
	) "m_1"
		INNER JOIN "CteTable" "d_1" ON "m_1"."Id" = "d_1"."Value3"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.2.5 Firebird

WITH RECURSIVE "cte"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4",
	"Value5"
)
AS
(
	SELECT
		"r"."Id",
		"r"."Value1",
		"r"."Value2",
		"r"."Value3",
		"r"."Value4",
		"r"."Value5"
	FROM
		"CteTable" "r"
	UNION ALL
	SELECT
		"r_1"."Id",
		"r_1"."Value1",
		"r_1"."Value2",
		"r_1"."Value3",
		"r_1"."Value4",
		"r_1"."Value5"
	FROM
		"cte" "t1"
			INNER JOIN "CteTable" "r_1" ON "t1"."Value2" = "r_1"."Value3"
)
SELECT
	"t2"."Id",
	"t2"."Value1",
	"t2"."Value2",
	"t2"."Value3",
	"t2"."Value4",
	"t2"."Value5",
	"d"."Id"
FROM
	"cte" "t2"
		LEFT JOIN "CteChildTable" "d" ON "t2"."Value4" = "d"."Id"


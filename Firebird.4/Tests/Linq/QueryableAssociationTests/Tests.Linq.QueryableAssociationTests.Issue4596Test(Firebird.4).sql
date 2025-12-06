-- Firebird.4 Firebird4

SELECT
	"m_1"."Id",
	"m_1"."cond",
	"m_1"."cond_1",
	"d"."Id",
	"d"."FormId",
	"d"."OrderIndex",
	"d"."Name1",
	"d"."Name2",
	"d"."Name3"
FROM
	(
		SELECT
			"t1"."Id",
			"t1".C1 = 'T' as "cond",
			"t1".C1 <> 'T' as "cond_1"
		FROM
			"Issue4596Form" "t1"
		FETCH NEXT 1 ROWS ONLY
	) "m_1"
		INNER JOIN "Issue4596Item" "d" ON "d"."FormId" = "m_1"."Id"

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1".C1,
	"t1".C1 = 'T',
	"t1".C1 <> 'T'
FROM
	"Issue4596Form" "t1"
FETCH NEXT 1 ROWS ONLY


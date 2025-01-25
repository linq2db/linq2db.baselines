BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1799Table3"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table3')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1799Table3"
			(
				"ProcessID"   Int                                    NOT NULL,
				"ProcessName" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Issue1799Table3"
(
	"ProcessID",
	"ProcessName"
)
SELECT 1,CAST('One' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'Two' FROM rdb$database UNION ALL
SELECT 3,'Three' FROM rdb$database UNION ALL
SELECT 4,'Four' FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	LEAD("p"."ProcessName", 2) OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	LEAD("p"."ProcessName") OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	LAG("p"."ProcessName", 2) OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	LAG("p"."ProcessName") OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1799Table3"';
END


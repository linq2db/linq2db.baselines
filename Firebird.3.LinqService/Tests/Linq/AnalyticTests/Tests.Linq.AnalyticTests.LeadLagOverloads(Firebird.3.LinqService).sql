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
DECLARE @ProcessID Integer -- Int32
SET     @ProcessID = 1
DECLARE @ProcessName VarChar(3) -- String
SET     @ProcessName = 'One'

INSERT INTO "Issue1799Table3"
(
	"ProcessID",
	"ProcessName"
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ProcessID Integer -- Int32
SET     @ProcessID = 2
DECLARE @ProcessName VarChar(3) -- String
SET     @ProcessName = 'Two'

INSERT INTO "Issue1799Table3"
(
	"ProcessID",
	"ProcessName"
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ProcessID Integer -- Int32
SET     @ProcessID = 3
DECLARE @ProcessName VarChar(5) -- String
SET     @ProcessName = 'Three'

INSERT INTO "Issue1799Table3"
(
	"ProcessID",
	"ProcessName"
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ProcessID Integer -- Int32
SET     @ProcessID = 4
DECLARE @ProcessName VarChar(4) -- String
SET     @ProcessName = 'Four'

INSERT INTO "Issue1799Table3"
(
	"ProcessID",
	"ProcessName"
)
VALUES
(
	@ProcessID,
	@ProcessName
)

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


BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1078Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1078Table"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1078Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1078Table"
			(
				"UserID" Int     NOT NULL,
				"SiteID" Int     NOT NULL,
				"Active" CHAR(1) NOT NULL,

				CONSTRAINT "PK_Issue1078Table" PRIMARY KEY ("UserID")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
SELECT 1,1,'1' FROM rdb$database UNION ALL
SELECT 2,1,'0' FROM rdb$database UNION ALL
SELECT 3,1,'1' FROM rdb$database UNION ALL
SELECT 4,2,'0' FROM rdb$database UNION ALL
SELECT 5,2,'1' FROM rdb$database UNION ALL
SELECT 6,2,'0' FROM rdb$database UNION ALL
SELECT 7,2,'0' FROM rdb$database UNION ALL
SELECT 8,3,'0' FROM rdb$database UNION ALL
SELECT 9,4,'1' FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"grp"."SiteID",
	COUNT(*),
	COUNT(CASE
		WHEN "grp"."Active" = '0' THEN 1
		ELSE NULL
	END)
FROM
	"Issue1078Table" "grp"
GROUP BY
	"grp"."SiteID"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1078Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1078Table"';
END


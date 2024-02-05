BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1078Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1078Table"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1078Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1078Table"
			(
				"UserID" Int  NOT NULL,
				"SiteID" Int  NOT NULL,
				"Active" CHAR NOT NULL,

				CONSTRAINT "PK_Issue1078Table" PRIMARY KEY ("UserID")
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
SELECT 1,1,1 FROM rdb$database UNION ALL
SELECT 2,1,0 FROM rdb$database UNION ALL
SELECT 3,1,1 FROM rdb$database UNION ALL
SELECT 4,2,0 FROM rdb$database UNION ALL
SELECT 5,2,1 FROM rdb$database UNION ALL
SELECT 6,2,0 FROM rdb$database UNION ALL
SELECT 7,2,0 FROM rdb$database UNION ALL
SELECT 8,3,0 FROM rdb$database UNION ALL
SELECT 9,4,1 FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"t1"."SiteID",
	Count(*),
	(
		SELECT
			Count(*)
		FROM
			"Issue1078Table" "u"
		WHERE
			CASE
				WHEN "u"."Active" = 1 THEN 1
				ELSE 0
			END = 0 AND
			"t1"."SiteID" = "u"."SiteID"
	)
FROM
	"Issue1078Table" "t1"
GROUP BY
	"t1"."SiteID"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1078Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1078Table"';
END


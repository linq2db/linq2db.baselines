BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1078Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1078Table"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1078Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1078Table"
			(
				"UserID" Int     NOT NULL,
				"SiteID" Int     NOT NULL,
				"Active" BOOLEAN NOT NULL,

				CONSTRAINT "PK_Issue1078Table" PRIMARY KEY ("UserID")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @UserID Integer -- Int32
SET     @UserID = 1
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 1
DECLARE @Active Boolean
SET     @Active = TRUE

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @UserID Integer -- Int32
SET     @UserID = 2
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 1
DECLARE @Active Boolean
SET     @Active = FALSE

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @UserID Integer -- Int32
SET     @UserID = 3
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 1
DECLARE @Active Boolean
SET     @Active = TRUE

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @UserID Integer -- Int32
SET     @UserID = 4
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 2
DECLARE @Active Boolean
SET     @Active = FALSE

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @UserID Integer -- Int32
SET     @UserID = 5
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 2
DECLARE @Active Boolean
SET     @Active = TRUE

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @UserID Integer -- Int32
SET     @UserID = 6
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 2
DECLARE @Active Boolean
SET     @Active = FALSE

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @UserID Integer -- Int32
SET     @UserID = 7
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 2
DECLARE @Active Boolean
SET     @Active = FALSE

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @UserID Integer -- Int32
SET     @UserID = 8
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 3
DECLARE @Active Boolean
SET     @Active = FALSE

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @UserID Integer -- Int32
SET     @UserID = 9
DECLARE @SiteID Integer -- Int32
SET     @SiteID = 4
DECLARE @Active Boolean
SET     @Active = TRUE

INSERT INTO "Issue1078Table"
(
	"UserID",
	"SiteID",
	"Active"
)
VALUES
(
	@UserID,
	@SiteID,
	@Active
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"grp"."SiteID",
	COUNT(*),
	COUNT(CASE
		WHEN NOT "grp"."Active" THEN 1
		ELSE NULL
	END)
FROM
	"Issue1078Table" "grp"
GROUP BY
	"grp"."SiteID"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1078Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1078Table"';
END


BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1078Table"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue1078Table"
		(
			"UserID" Int      NOT NULL,
			"SiteID" Int      NOT NULL,
			"Active" smallint NOT NULL,

			CONSTRAINT "PK_Issue1078Table" PRIMARY KEY ("UserID")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 1
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 1
DECLARE @Active SmallInt(4) -- Int16
SET     @Active = 1

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
-- DB2 DB2.LUW DB2LUW
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 2
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 1
DECLARE @Active SmallInt(4) -- Int16
SET     @Active = 0

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
-- DB2 DB2.LUW DB2LUW
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 3
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 1
DECLARE @Active SmallInt(4) -- Int16
SET     @Active = 1

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
-- DB2 DB2.LUW DB2LUW
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 4
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 2
DECLARE @Active SmallInt(4) -- Int16
SET     @Active = 0

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
-- DB2 DB2.LUW DB2LUW
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 5
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 2
DECLARE @Active SmallInt(4) -- Int16
SET     @Active = 1

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
-- DB2 DB2.LUW DB2LUW
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 6
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 2
DECLARE @Active SmallInt(4) -- Int16
SET     @Active = 0

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
-- DB2 DB2.LUW DB2LUW
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 7
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 2
DECLARE @Active SmallInt(4) -- Int16
SET     @Active = 0

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
-- DB2 DB2.LUW DB2LUW
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 8
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 3
DECLARE @Active SmallInt(4) -- Int16
SET     @Active = 0

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
-- DB2 DB2.LUW DB2LUW
DECLARE @UserID Integer(4) -- Int32
SET     @UserID = 9
DECLARE @SiteID Integer(4) -- Int32
SET     @SiteID = 4
DECLARE @Active SmallInt(4) -- Int16
SET     @Active = 1

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
-- DB2 DB2.LUW DB2LUW

SELECT
	"grp"."SiteID",
	COUNT(*),
	COUNT(CASE
		WHEN "grp"."Active" = 0 THEN 1
		ELSE NULL
	END)
FROM
	"Issue1078Table" "grp"
GROUP BY
	"grp"."SiteID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1078Table"';
END


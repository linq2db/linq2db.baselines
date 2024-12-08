BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InsertIssueTest"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "InsertIssueTest"
		(
			ID            SmallInt NOT NULL,
			"intDataType" Int          NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID SmallInt(2) -- Int16
SET     @ID = 0
DECLARE @intDataType Integer(4) -- Int32
SET     @intDataType = 0

INSERT INTO "InsertIssueTest"
(
	ID,
	"intDataType"
)
VALUES
(
	@ID,
	@intDataType
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID SmallInt(2) -- Int16
SET     @ID = 0
DECLARE @intDataType Integer(4) -- Int32
SET     @intDataType = 0

INSERT INTO "InsertIssueTest"
(
	ID,
	"intDataType"
)
VALUES
(
	@ID,
	@intDataType
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID SmallInt(2) -- Int16
SET     @ID = 1234
DECLARE @intDataType Integer(4) -- Int32
SET     @intDataType = 1234

INSERT INTO "InsertIssueTest"
(
	ID,
	"intDataType"
)
VALUES
(
	@ID,
	@intDataType
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ID SmallInt(2) -- Int16
SET     @ID = 1234
DECLARE @intDataType Integer(4) -- Int32
SET     @intDataType = 1234

INSERT INTO "InsertIssueTest"
(
	ID,
	"intDataType"
)
VALUES
(
	@ID,
	@intDataType
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "InsertIssueTest"
(
	ID,
	"intDataType"
)
SELECT
	123,
	"t2".ID
FROM
	(
		SELECT DISTINCT
			"a_Association".ID
		FROM
			"InsertIssueTest" "t1"
				INNER JOIN "InsertIssueTest" "a_Association" ON "t1".ID = "a_Association"."intDataType"
		WHERE
			1 = 0
	) "t2"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @cond SmallInt(2) -- Int16
SET     @cond = 1234

INSERT INTO "InsertIssueTest"
(
	ID,
	"intDataType"
)
SELECT
	123,
	"t2".ID
FROM
	(
		SELECT DISTINCT
			"a_Association".ID
		FROM
			"InsertIssueTest" "t1"
				INNER JOIN "InsertIssueTest" "a_Association" ON "t1".ID = "a_Association"."intDataType"
		WHERE
			"t1".ID = @cond
	) "t2"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID,
	"t1"."intDataType"
FROM
	"InsertIssueTest" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InsertIssueTest"';
END


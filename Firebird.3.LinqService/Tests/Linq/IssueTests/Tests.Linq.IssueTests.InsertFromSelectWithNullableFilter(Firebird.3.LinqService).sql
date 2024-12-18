BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InsertIssueTest')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InsertIssueTest"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InsertIssueTest')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "InsertIssueTest"
			(
				ID            SmallInt NOT NULL,
				"intDataType" Int
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @ID SmallInt -- Int16
SET     @ID = 0
DECLARE @intDataType Integer -- Int32
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
-- Firebird.3 Firebird3
DECLARE @ID SmallInt -- Int16
SET     @ID = 0
DECLARE @intDataType Integer -- Int32
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
-- Firebird.3 Firebird3
DECLARE @ID SmallInt -- Int16
SET     @ID = 1234
DECLARE @intDataType Integer -- Int32
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
-- Firebird.3 Firebird3
DECLARE @ID SmallInt -- Int16
SET     @ID = 1234
DECLARE @intDataType Integer -- Int32
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
-- Firebird.3 Firebird3

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
				INNER JOIN "InsertIssueTest" "a_Association" ON "t1".ID = "a_Association"."intDataType" AND "a_Association"."intDataType" IS NOT NULL
		WHERE
			1 = 0
	) "t2"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @cond SmallInt -- Int16
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
				INNER JOIN "InsertIssueTest" "a_Association" ON "t1".ID = "a_Association"."intDataType" AND "a_Association"."intDataType" IS NOT NULL
		WHERE
			"t1".ID = @cond
	) "t2"

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1".ID,
	"t1"."intDataType"
FROM
	"InsertIssueTest" "t1"

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InsertIssueTest')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InsertIssueTest"';
END


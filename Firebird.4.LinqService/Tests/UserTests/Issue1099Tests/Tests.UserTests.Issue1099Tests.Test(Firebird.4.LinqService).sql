BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BackgroundTask')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BackgroundTask"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BackgroundTask')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "BackgroundTask"
			(
				ID                 Int,
				"DurationID"       Int NOT NULL,
				"DurationInterval" Int NOT NULL,
				"PersonID"         Int
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @DurationID Integer -- Int32
SET     @DurationID = 2
DECLARE @DurationInterval Integer -- Int32
SET     @DurationInterval = 4
DECLARE @PersonID Integer -- Int32
SET     @PersonID = 1

INSERT INTO "BackgroundTask"
(
	ID,
	"DurationID",
	"DurationInterval",
	"PersonID"
)
VALUES
(
	@ID,
	@DurationID,
	@DurationInterval,
	@PersonID
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @personId Integer -- Int32
SET     @personId = 1

SELECT
	"task_1".ID,
	"task_1"."DurationID",
	"task_1"."DurationInterval",
	"task_1"."PersonID"
FROM
	"BackgroundTask" "task_1"
WHERE
	"task_1"."PersonID" = @personId

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BackgroundTask')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BackgroundTask"';
END


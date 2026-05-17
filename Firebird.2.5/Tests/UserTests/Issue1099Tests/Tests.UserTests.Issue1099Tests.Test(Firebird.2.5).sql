-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird
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


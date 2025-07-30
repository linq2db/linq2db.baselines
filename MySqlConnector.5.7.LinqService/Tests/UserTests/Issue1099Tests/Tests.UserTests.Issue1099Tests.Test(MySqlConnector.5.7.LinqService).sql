BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @ID Int32
SET     @ID = 3
DECLARE @DurationID Int32
SET     @DurationID = 2
DECLARE @DurationInterval Int32
SET     @DurationInterval = 4
DECLARE @PersonID Int32
SET     @PersonID = 1

INSERT INTO `BackgroundTask`
(
	`ID`,
	`DurationID`,
	`DurationInterval`,
	`PersonID`
)
VALUES
(
	@ID,
	@DurationID,
	@DurationInterval,
	@PersonID
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @personId Int32
SET     @personId = 1

SELECT
	`task_1`.`ID`,
	`task_1`.`DurationID`,
	`task_1`.`DurationInterval`,
	`task_1`.`PersonID`
FROM
	`BackgroundTask` `task_1`
WHERE
	`task_1`.`PersonID` = @personId


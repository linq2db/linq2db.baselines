BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `BackgroundTask`

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

CREATE TABLE IF NOT EXISTS `BackgroundTask`
(
	`ID`               INT     NULL,
	`DurationID`       INT NOT NULL,
	`DurationInterval` INT NOT NULL,
	`PersonID`         INT     NULL
)

BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

DROP TABLE IF EXISTS `BackgroundTask`


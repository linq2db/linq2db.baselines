BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `InsertIssueTest`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `InsertIssueTest`
(
	`ID`          SMALLINT NOT NULL,
	`intDataType` INT          NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

INSERT INTO `InsertIssueTest`
(
	`ID`,
	`intDataType`
)
VALUES
(0,0),
(0,0),
(1234,1234),
(1234,1234)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @cond Int16
SET     @cond = 0

INSERT INTO `InsertIssueTest`
(
	`ID`,
	`intDataType`
)
SELECT
	123,
	`t2`.`ID`
FROM
	(
		SELECT DISTINCT
			`a_Association`.`ID`
		FROM
			`InsertIssueTest` `t1`
				INNER JOIN `InsertIssueTest` `a_Association` ON `t1`.`ID` = `a_Association`.`intDataType`
		WHERE
			`t1`.`ID` = @cond
	) `t2`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `InsertIssueTest`


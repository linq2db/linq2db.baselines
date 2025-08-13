BeforeExecute
BeginTransaction
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @CODE_AA VarChar(2) -- String
SET     @CODE_AA = 'AA'

INSERT INTO `TEST_TB_AA`
(
	`CODE_AA`
)
VALUES
(
	@CODE_AA
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TEMPORARY TABLE IF NOT EXISTS `TMP_MIN_TEMPORARY`
(
	`IDX`   INT         AUTO_INCREMENT NOT NULL,
	`KEY_A` VARCHAR(80)                NOT NULL,

	CONSTRAINT `PK_TMP_MIN_TEMPORARY` PRIMARY KEY CLUSTERED (`IDX`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TEMPORARY TABLE IF EXISTS `TMP_MIN_TEMPORARY`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @CODE_AA VarChar(2) -- String
SET     @CODE_AA = 'AA'

INSERT INTO `TEST_TB_AA`
(
	`CODE_AA`
)
VALUES
(
	@CODE_AA
)

BeforeExecute
RollbackTransaction
BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	COUNT(*)
FROM
	`TEST_TB_AA` `t1`


BeforeExecute
BeginTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TEMPORARY TABLE IF NOT EXISTS `TMP_MIN_TEMPORARY`
(
	`IDX`   INT         AUTO_INCREMENT NOT NULL,
	`KEY_A` VARCHAR(80)                NOT NULL,

	CONSTRAINT `PK_TMP_MIN_TEMPORARY` PRIMARY KEY CLUSTERED (`IDX`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TEMPORARY TABLE IF EXISTS `TMP_MIN_TEMPORARY`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
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
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	COUNT(*)
FROM
	`TEST_TB_AA` `t1`


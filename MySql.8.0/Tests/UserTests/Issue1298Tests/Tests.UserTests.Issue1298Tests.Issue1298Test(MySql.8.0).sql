﻿BeforeExecute
BeginTransaction
BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `mega_composites`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `mega_composites`
(
	`ref1` BIGINT     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `qwerty`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `qwerty`
(
	`Id`     BIGINT        NOT NULL,
	`asdfgh` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int64
SET     @Id = 1
DECLARE @asdfgh VarChar(4) -- String
SET     @asdfgh = 'res1'

INSERT INTO `qwerty`
(
	`Id`,
	`asdfgh`
)
VALUES
(
	@Id,
	@asdfgh
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Id Int64
SET     @Id = 100500
DECLARE @asdfgh VarChar(9) -- String
SET     @asdfgh = 'res100500'

INSERT INTO `qwerty`
(
	`Id`,
	`asdfgh`
)
VALUES
(
	@Id,
	@asdfgh
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ref1 Int64
SET     @ref1 = 100500

INSERT INTO `mega_composites`
(
	`ref1`
)
VALUES
(
	@ref1
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ref1 Int64
SET     @ref1 = 1

INSERT INTO `mega_composites`
(
	`ref1`
)
VALUES
(
	@ref1
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @ref1 Int64
SET     @ref1 = 100500

INSERT INTO `mega_composites`
(
	`ref1`
)
VALUES
(
	@ref1
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @take Int32
SET     @take = 2

SELECT
	`x`.`ref1`,
	`t1`.`asdfgh`
FROM
	`mega_composites` `x`
		LEFT JOIN LATERAL (
			SELECT
				`q`.`asdfgh`
			FROM
				`qwerty` `q`
			WHERE
				`q`.`Id` = `x`.`ref1`
			LIMIT 1
		) `t1` ON 1=1
LIMIT @take

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `qwerty`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `mega_composites`

BeforeExecute
DisposeTransaction

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue3927Table`

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

CREATE TABLE IF NOT EXISTS `Issue3927Table`
(
	`SerialNumber` CHAR(11) NOT NULL,
	`PageNumber`   INT      NOT NULL,

	CONSTRAINT `PK_Issue3927Table` PRIMARY KEY CLUSTERED (`SerialNumber`)
)

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @PageNumber Int32
SET     @PageNumber = 9
DECLARE @serialNumber String(11) -- AnsiStringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO `Issue3927Table`
(
	`PageNumber`
)
SELECT
	@PageNumber
FROM
	`Issue3927Table` `display`
WHERE
	`display`.`SerialNumber` = @serialNumber

BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

DROP TABLE IF EXISTS `Issue3927Table`

